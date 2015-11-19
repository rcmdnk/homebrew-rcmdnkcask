cask :v1 => 'menubargmail' do
  version '0.0.8'
  sha256 'f93fe0d98cb6d59a29ab9647760d80a23e4c34070b639124daf7eb505a7f1fab'

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
