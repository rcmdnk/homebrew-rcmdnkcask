"""Check that every installable cask has a README list entry."""

from pathlib import Path
import re
import unittest


class ReadmeCasksTest(unittest.TestCase):
    def test_all_casks_have_readme_entries(self):
        root = Path(__file__).resolve().parents[1]
        casks = {file.stem for file in (root / "Casks").rglob("*.rb")}
        self.assertTrue(casks, "No casks found")

        readme = (root / "README.md").read_text(encoding="utf-8")
        documented = set(
            re.findall(
                r"^[ \t]*[-*] \[([^\]]+)\]\([^)]+\):[ \t]+\S",
                readme,
                re.MULTILINE,
            )
        )
        missing = sorted(casks - documented)
        self.assertFalse(missing, f"Casks missing from README: {', '.join(missing)}")


if __name__ == "__main__":
    unittest.main()
