cask :v1 => 'menubargmail' do
  version '0.0.4'
  sha256 '15474afd088e695f85f5d69acafd020c7821ac74422d081fd609668c2c897008'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.tar.gz"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'
  license :mit

  app "MenuBarGmail-#{version}/MenuBarGmail.app"
end
