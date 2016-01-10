cask 'font-migu2m' do
  version '20130617'
  sha256 '25092541e927bbebc094f9c1d7cfaec3e8e2c7a997c360c507a3433ed11e8278'

  url "http://osdn.jp/frs/redir.php?m=iij&f=%2Fmix-mplus-ipa%2F59022%2Fmigu-2m-#{version}.zip"
  homepage 'http://mix-mplus-ipa.sourceforge.jp/migu/'
  license :unknown

  font 'migu-1m-20130617/migu-2m-bold.ttf'
  font 'migu-1m-20130617/migu-2m-regular.ttf'
end
