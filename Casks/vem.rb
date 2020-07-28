cask 'vem' do
  version '0.1.0'
  sha256 'def9384dda2191ebf81ae52c6467b9e983fd7885a52430f3f8dbd59b0addd206'

  url "https://github.com/rcmdnk/VEM/releases/download/v#{version}/VEM-v#{version}.zip"
  name 'VEM'
  homepage 'https://github.com/rcmdnk/VEM'

  app "VEM.app"

  uninstall :script => {
    :executable => "/Applications/VEM.app/Contents/MacOS/VEM",
    :args => ['-u']
  }
end
