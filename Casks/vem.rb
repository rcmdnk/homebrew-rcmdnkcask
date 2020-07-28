cask 'menubargmail' do
  version '0.1.0'
  sha256 '9d358f24ba9f46357f264212c84145744e08f62195ce4d5174ac2bdea06895f2'

  url "https://github.com/rcmdnk/VEM/releases/download/v#{version}/VEM-v#{version}.zip"
  name 'VEM'
  homepage 'https://github.com/rcmdnk/VEM'

  app "VEM.app"

  uninstall :script => {
    :executable => "/Applications/VEM.app/Contents/MacOS/VEM",
    :args => ['-u']
  }
end
