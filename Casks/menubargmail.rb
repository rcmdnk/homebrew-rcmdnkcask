cask :v1 => 'menubargmail' do
  version '0.0.7'
  sha256 '1973f95a7c988f1139c53520f481640ae497628cf35786ac76912c0789abe9b5'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.tar.gz"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'
  license :mit

  app "#{name}-#{version}/#{name}.app"

  uninstall :script => {
    :executable => "#{name}-#{version}/#{name}.app/Contents/MacOS/#{name}",
    :args => ['-u']
  }
end
