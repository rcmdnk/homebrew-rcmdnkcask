cask 'menubargmail' do
  version '0.2.0'
  sha256 '1123baf80072cbde1a3f7cc0592bd8c61eaf57df714455f7492589a7719b7552'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.tar.gz"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'

  app "MenuBarGmail-#{version}/MenuBarGmail.app"

  uninstall :script => {
    :executable => "/Applications/MenuBarGmail.app/Contents/MacOS/MenuBarGmail",
    :args => ['-u']
  }
end
