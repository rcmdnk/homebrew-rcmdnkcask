cask 'menubargmail' do
  version '0.0.12'
  sha256 '58ed6768e24c04335b2adcfdd1338ac69a3aa3d938f1d5459f4b1ac0daacf7ec'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.tar.gz"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'
  license :mit

  app "MenuBarGmail-#{version}/MenuBarGmail.app"

  uninstall :script => {
    :executable => "/Applications/MenuBarGmail.app/Contents/MacOS/MenuBarGmail",
    :args => ['-u']
  }
end
