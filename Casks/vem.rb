cask 'vem' do
  version '0.1.0'
  sha256 '63d64aa870512bb6dbb21e75298245dc46b527e53062e89265c33f9bd9194e0e'

  url "https://github.com/rcmdnk/VEM/releases/download/v#{version}/VEM-v#{version}.zip"
  name 'VEM'
  homepage 'https://github.com/rcmdnk/VEM'

  app "VEM.app"

  uninstall :script => {
    :executable => "/Applications/VEM.app/Contents/MacOS/VEM",
    :args => ['-u']
  }
end
