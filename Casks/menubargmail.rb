cask :v1 => 'menubargmail' do
  version '0.0.11'
  sha256 'b8e4894af8c3259d8f1b90ef017e6483e6e196264a8337bf5b7d6b6070e8f86f'

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
