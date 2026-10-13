cask 'lightningkeyboard' do
  version :latest
  sha256 :no_check

  url 'http://morishin.me/file/LightningKeyboard.zip'
  name 'LightningKeyboard'
  homepage 'https://github.com/morishin/LightningKeyboard'

  # The original binary download returns HTTP 404; upstream has no releases.
  disable! date: '2026-10-13', because: :no_longer_available

  app 'LightningKeyboard/LightningKeyboard.app'
end
