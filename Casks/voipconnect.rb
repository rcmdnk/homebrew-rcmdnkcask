class Voipconnect < Cask
  version '1.0.0'
  sha256 '05f80c472e012dce9efeadbfc213e91e63db967972f5757b2ca61faf4564c9ec'

  url 'http://www.voipconnect.com/public/download/VoipConnect_1.00.pkg'
  homepage 'http://www.voipconnect.com/'

  install 'VoipConnect_1.00.pkg'
  uninstall :files => [
    '/Applications/VoipConnect.app'
  ]
end
