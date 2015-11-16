cask :v1 => 'menubargmail' do
  version '0.0.3'
  sha256 '391995d1c1dc1711346734b34f38a75ea6628143e45b07aa76d2a70193264bc1'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.tar.gz"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'
  license :mit

  app "MenuBarGmail-#{version}/MenuBarGmail.app"
end
