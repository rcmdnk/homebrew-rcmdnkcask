cask 'vem' do
  version '0.1.0'
  sha256 'fb4e7ef9507358bde599279bf95c2c99793af0f6c1d87036504dc2d7b36f3969'

  url "https://github.com/rcmdnk/VEM/releases/download/v#{version}/VEM-v#{version}.zip"
  name 'VEM'
  homepage 'https://github.com/rcmdnk/VEM'

  app "VEM.app"
end
