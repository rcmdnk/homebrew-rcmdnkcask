cask 'font-migu1m' do
  version '20130617'
  sha256 'c52025471b560e5aba73ec2327a160d6e514def05964056dbb1a8409e5870b45'

  url "http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fmix-mplus-ipa%2F59022%2Fmigu-1m-#{version}.zip"
  homepage 'http://mix-mplus-ipa.sourceforge.jp/migu/'
  license :unknown

  font 'migu-1m-20130617/migu-1m-bold.ttf'
  font 'migu-1m-20130617/migu-1m-regular.ttf'
end
