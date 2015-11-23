cask :v1 => 'menubargmail' do
  version '0.0.10'
  sha256 '9aeaad77b16ff2cca51f80347dc62ec54e671caf5e698ebd8a75f5d76a14f0f6'

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
