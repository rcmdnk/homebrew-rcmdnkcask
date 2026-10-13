cask 'notify' do
  version '2.1.6'
  sha256 'cc11cedeeaedd15619dd6b89777fc48c9da4d6ad7fd9f9e541d258739a9a3f6f'

  url "http://www.macupdate.com/download/32217/notify-#{version.gsub('.','')}.zip"
  name 'Notify Pro'
  homepage 'http://www.macupdate.com/app/mac/32217/notify-pro'

  # The original download and product page both return HTTP 404.
  disable! date: '2026-10-13', because: :no_longer_available

  app 'Notify.app'
end
