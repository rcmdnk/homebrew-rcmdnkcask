"""Report whether a cask is disabled before CI attempts installation."""

import json
import os
from pathlib import Path
import sys


def main():
    metadata = json.load(sys.stdin)
    casks = metadata.get("casks")
    if not isinstance(casks, list) or len(casks) != 1:
        raise ValueError("Expected metadata for exactly one cask")

    cask = casks[0]
    disabled = cask.get("disabled")
    if not isinstance(disabled, bool):
        raise ValueError("Expected a boolean disabled flag in cask metadata")

    name = os.environ["CASK"]
    if disabled:
        reason = cask.get("disable_reason") or "no reason provided"
        date = cask.get("disable_date") or "unknown date"
        message = (
            f"{name}: disabled since {date} ({reason}); "
            "metadata verified, installation skipped."
        )
        with Path(os.environ["GITHUB_STEP_SUMMARY"]).open("a") as summary:
            summary.write(f"{message}\n")
        print(message)
    else:
        print(f"{name}: metadata verified; installation required.")

    with Path(os.environ["GITHUB_OUTPUT"]).open("a") as output:
        output.write(f"disabled={str(disabled).lower()}\n")


if __name__ == "__main__":
    main()
