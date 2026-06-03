cask 'vem' do
  version '0.2.0'
  sha256 'bda4121682595386b8e95cfd007418a59c0a79277ecd91ed6994dcd10f1d56f0'

  url "https://github.com/rcmdnk/VEM/releases/download/v#{version}/VEM-v#{version}.zip"
  name 'VEM'
  homepage 'https://github.com/rcmdnk/VEM'

  app "VEM.app"
end
