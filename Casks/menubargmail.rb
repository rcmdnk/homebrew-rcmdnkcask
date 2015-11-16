cask :v1 => 'menubargmail' do
  version '0.0.5'
  sha256 '920e9f44353a375872e759978837b332c02400bbb4bd9e7aa2fc487a94ace907'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.tar.gz"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'
  license :mit

  app "MenuBarGmail-#{version}/MenuBarGmail.app"
end
