cask 'menubargmail' do
  version '0.2.0'
  sha256 'b837e2e305647dc2de63f96407e4caeb18426764d6e543b11fa40e350f64ed63'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.tar.gz"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'

  app "MenuBarGmail-#{version}/MenuBarGmail.app"

  uninstall :script => {
    :executable => "/Applications/MenuBarGmail.app/Contents/MacOS/MenuBarGmail",
    :args => ['-u']
  }

