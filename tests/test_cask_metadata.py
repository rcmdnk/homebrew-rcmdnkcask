"""Verify that CI skips only explicitly disabled casks."""

import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest


class CaskMetadataTest(unittest.TestCase):
    script = Path(__file__).resolve().parents[1] / "scripts" / "cask_metadata.py"

    def run_metadata(self, metadata):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "output"
            summary = Path(directory) / "summary"
            result = subprocess.run(
                [sys.executable, str(self.script)],
                input=json.dumps(metadata),
                text=True,
                capture_output=True,
                env={
                    **os.environ,
                    "CASK": "rcmdnk/rcmdnkcask/example",
                    "GITHUB_OUTPUT": str(output),
                    "GITHUB_STEP_SUMMARY": str(summary),
                },
                check=False,
            )
            return (
                result,
                output.read_text() if output.exists() else "",
                summary.read_text() if summary.exists() else "",
            )

    def test_enabled_cask_requires_installation(self):
        result, output, summary = self.run_metadata({"casks": [{"disabled": False}]})
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(output, "disabled=false\n")
        self.assertEqual(summary, "")

    def test_disabled_cask_reports_reason_and_skips_installation(self):
        result, output, summary = self.run_metadata(
            {
                "casks": [
                    {
                        "disabled": True,
                        "disable_reason": "no_longer_available",
                        "disable_date": "2026-10-13",
                    }
                ]
            }
        )
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(output, "disabled=true\n")
        self.assertIn("no_longer_available", summary)
        self.assertIn("2026-10-13", summary)
        self.assertIn("installation skipped", summary)

    def test_deprecated_cask_still_requires_installation(self):
        result, output, _ = self.run_metadata(
            {"casks": [{"disabled": False, "deprecated": True}]}
        )
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(output, "disabled=false\n")

    def test_invalid_metadata_fails_without_setting_a_skip_flag(self):
        cases = [
            {},
            {"casks": []},
            {"casks": [{"disabled": False}, {"disabled": True}]},
            {"casks": [{}]},
            {"casks": [{"disabled": "false"}]},
        ]
        for metadata in cases:
            with self.subTest(metadata=metadata):
                result, output, summary = self.run_metadata(metadata)
                self.assertNotEqual(result.returncode, 0)
                self.assertEqual(output, "")
                self.assertEqual(summary, "")


if __name__ == "__main__":
    unittest.main()
