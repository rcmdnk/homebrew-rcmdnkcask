cask :v1 => 'menubargmail' do
  version '0.0.9'
  sha256 'ee9847526e15c8e87f33dc74d0e0eb7ac2adae69bf80c90474f90301aaf7257d'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.tar.gz"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'
  license :mit

  app "MenuBarGmail-#{version}/MenuBarGmail.app"

  uninstall :script => {
    :executable => "MenuBarGmail-#{version}/MenuBarGmail.app/Contents/MacOS/MenuBarGmail",
    :args => ['-u']
  }
end
