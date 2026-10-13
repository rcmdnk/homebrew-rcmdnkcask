"""Check README coverage for all casks, including disabled and migrated ones."""

import json
from pathlib import Path
import re
import unittest


class ReadmeCasksTest(unittest.TestCase):
    root = Path(__file__).resolve().parents[1]

    def test_all_casks_have_readme_entries(self):
        casks = {file.stem for file in (self.root / "Casks").rglob("*.rb")}
        self.assertTrue(casks, "No casks found")

        readme = (self.root / "README.md").read_text(encoding="utf-8")
        documented = set(
            re.findall(
                r"^[ \t]*[-*] \[([^\]]+)\]\([^)]+\):[ \t]+\S",
                readme,
                re.MULTILINE,
            )
        )
        missing = sorted(casks - documented)
        self.assertFalse(missing, f"Casks missing from README: {', '.join(missing)}")

    def test_migrations_have_readme_entries_and_install_commands(self):
        migrations = json.loads(
            (self.root / "tap_migrations.json").read_text(encoding="utf-8")
        )
        self.assertIsInstance(migrations, dict)
        self.assertTrue(migrations, "No cask migrations found")
        casks = {file.stem for file in (self.root / "Casks").rglob("*.rb")}
        readme = (self.root / "README.md").read_text(encoding="utf-8")
        entries = dict(
            re.findall(
                r"^[ \t]*[-*] \[([^\]]+)\]\([^)]+\):[ \t]+([^\n]+)",
                readme,
                re.MULTILINE,
            )
        )

        for old_token, destination in migrations.items():
            with self.subTest(cask=old_token):
                self.assertNotIn(old_token, casks, "Migrated cask still exists locally")
                self.assertRegex(destination, r"^[a-z0-9-]+/[a-z0-9-]+/[a-z0-9-]+$")
                self.assertIn(old_token, entries, "Migration missing from README")
                self.assertIn(destination, entries[old_token])
                token = destination.rsplit("/", 1)[1]
                self.assertIn(f"`brew install --cask {token}`", readme)


if __name__ == "__main__":
    unittest.main()
