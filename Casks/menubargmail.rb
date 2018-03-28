cask 'menubargmail' do
  version '0.1.0'
  sha256 'c117bc8ed91f8a37a9e66ee2a379dc2fcc18090a5610d219f25b066bbe05b8c6'

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
