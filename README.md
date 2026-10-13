homebrew-rcmdnkcask
===================

My Casks:

* Applications
    * [Cathode](http://www.secretgeometry.com/apps/cathode/) -> available in [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
    * [Configure Application Dock Tile](http://boredzo.org/cadt/) -> available in [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask/blob/master/Casks/configure-application-dock-tile.rb)
    * [KeyCastr](https://github.com/sdeken/keycastr) -> moved to [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
    * [MadRuby](http://www.wingsforpigs.com/MadRuby/MadRuby.html) -> moved to [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
    * [menubargmail](https://github.com/rcmdnk/MenuBarGmail): MenuBarGmail application.
    * [miaforgmail](http://www.miaforgmail.com/): Mia for Gmail application.
    * [SimpleFloatingClock](http://www.splook.com/Software/Simple_Floating_Clock.html) -> moved to [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
    * [vem](https://github.com/rcmdnk/VEM): VEM application.
    * [voipconnect](http://www.voipconnect.com/): Voip Connect application.
* Disabled applications
    * [lightningkeyboard](https://github.com/morishin/LightningKeyboard): LightningKeyboard; disabled on 2026-10-13 because the binary download returns HTTP 404. Source remains available, but upstream has no published releases.
    * [notify](http://www.macupdate.com/app/mac/32217/notify-pro): Notify Pro; disabled on 2026-10-13 because the download and product page return HTTP 404.
    * [windowflow](http://most-advantageous.com/windowflow/): WindowFlow; disabled on 2026-10-13 because the download host no longer resolves and no replacement distribution was found.
* Fonts migrated to Homebrew's official casks
    * [font-migu1m](https://formulae.brew.sh/cask/font-migu-1m): Migu 1M; migrated to `homebrew/cask/font-migu-1m`. Install with `brew install --cask font-migu-1m`.
    * [font-migu2m](https://formulae.brew.sh/cask/font-migu-2m): Migu 2M; migrated to `homebrew/cask/font-migu-2m`. Install with `brew install --cask font-migu-2m`.

The old font names redirect to the official casks through `tap_migrations.json`.
The disabled applications are retained for reference and cannot be installed;
their status records unavailable downloads, not a confirmed end of development.

Tests
-----

Run the README coverage test locally:

```sh
python3 -m unittest discover -s tests -v
```

The `Test casks` GitHub Actions workflow runs the tests for pushes, pull requests,
and manual runs. It checks metadata for every local cask and migration, installs
enabled casks on macOS, and reports disabled casks with their disable reason.
Migrated font names are also checked to verify their official destinations.

Every local cask, including disabled ones, must have a list entry in the form
`[cask-token](URL): Description`. Each migration must also document its destination
and new install command. Tests verify that only explicitly disabled casks skip
installation; deprecated casks still require installation.
