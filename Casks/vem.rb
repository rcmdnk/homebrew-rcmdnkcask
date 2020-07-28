cask 'vem' do
  version '0.1.0'
  sha256 '5fc397c912d04f9ca56106cf12ef5b83f2de19d889e3bbb391b0b4ec34b5b757'

  url "https://github.com/rcmdnk/VEM/releases/download/v#{version}/VEM-v#{version}.zip"
  name 'VEM'
  homepage 'https://github.com/rcmdnk/VEM'

  app "VEM.app"

  uninstall :script => {
    :executable => "/Applications/VEM.app/Contents/MacOS/VEM",
    :args => ['-u']
  }
end
