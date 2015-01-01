cask :v1 => 'lightningkeybord' do
  version :latest
  sha256 :no_check

  url 'http://morishin.me/file/LightningKeyboard.zip'
  homepage 'http://morishin.hatenablog.com/entry/2014/07/05/213741'
  license :unknown

  app 'LightningKeyboard/LightningKeyboard.app'
end
