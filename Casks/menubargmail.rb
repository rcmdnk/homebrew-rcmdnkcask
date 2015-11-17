cask :v1 => 'menubargmail' do
  version '0.0.7'
  sha256 '3e412d35c6f92834c21f3aa5bd66f2226a0da4f8e7d275fc12a3bff00a356826'

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
