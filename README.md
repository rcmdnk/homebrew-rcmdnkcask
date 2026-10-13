homebrew-rcmdnkcask
===================

My Casks:

* Applications
    * [Cathode](http://www.secretgeometry.com/apps/cathode/) -> available in [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
    * [Configure Application Dock Tile](http://boredzo.org/cadt/) -> available in [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask/blob/master/Casks/configure-application-dock-tile.rb)
    * [KeyCastr](https://github.com/sdeken/keycastr) -> moved to [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
    * [lightningkeyboard](http://morishin.hatenablog.com/entry/2014/07/05/213741): LightningKeyboard application.
    * [MadRuby](http://www.wingsforpigs.com/MadRuby/MadRuby.html) -> moved to [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
    * [menubargmail](https://github.com/rcmdnk/MenuBarGmail): MenuBarGmail application.
    * [miaforgmail](http://www.miaforgmail.com/): Mia for Gmail application.
    * [notify](http://www.macupdate.com/app/mac/32217/notify-pro): Notify Pro application.
    * [SimpleFloatingClock](http://www.splook.com/Software/Simple_Floating_Clock.html) -> moved to [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)
    * [vem](https://github.com/rcmdnk/VEM): VEM application.
    * [windowflow](http://most-advantageous.com/windowflow/): WindowFlow application.
    * [voipconnect](http://www.voipconnect.com/): Voip Connect application.
* Fonts
    * [font-migu1m](http://mix-mplus-ipa.sourceforge.jp/migu/): Migu 1M font.
    * [font-migu2m](http://mix-mplus-ipa.sourceforge.jp/migu/): Migu 2M font.

Tests
-----

Run the README coverage test locally:

```sh
python3 -m unittest discover -s tests -v
```

The `Test casks` GitHub Actions workflow runs this test and checks each cask's
metadata and installation on macOS for pushes, pull requests, and manual runs.
Each cask must have a list entry in the form `[cask-token](URL): Description`.
