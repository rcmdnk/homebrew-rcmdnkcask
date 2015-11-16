cask :v1 => 'menubargmail' do
  version '0.0.6'
  sha256 'f21c3c0788272375fc2cf4ae7135ffc22455c41e1889eb3790361f2be39bb93b'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.tar.gz"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'
  license :mit

  app "MenuBarGmail-#{version}/MenuBarGmail.app"
end
