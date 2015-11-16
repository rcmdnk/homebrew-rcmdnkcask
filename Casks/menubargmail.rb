cask :v1 => 'menubargmail' do
  version '0.0.1'
  sha256 '661cb4a3d697266e43a65e1064986360c9a2ddbb3cac6ae7d47b7b18d432bde2'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.zip"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'
  license :mit

  app "MenuBarGmail-v#{version}/MenuBarGmail.app"
end
