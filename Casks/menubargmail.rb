cask 'menubargmail' do
  version '0.1.0'
  sha256 '6062a7b7fdd14d4fd5e88547036812f5c4ed39f2f3939b6c802a7c3cea799bbe'

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
