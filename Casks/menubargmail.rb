cask :v1 => 'menubargmail' do
  version '0.0.2'
  sha256 '37aefa18919d2f90b299b2014a60b9d356e0759a99524b3310914b7677b2b226'

  url "https://github.com/rcmdnk/MenuBarGmail/archive/v#{version}.zip"
  name 'MenuBarGmail'
  homepage 'https://github.com/rcmdnk/MenuBarGmail'
  license :mit

  app "MenuBarGmail-#{version}/MenuBarGmail.app"
end
