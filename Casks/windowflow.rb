cask 'windowflow' do
  version :latest
  sha256 :no_check

  url 'http://files.windowflow.com/windowflow-standard.zip'
  name 'WindowFlow'
  homepage 'http://most-advantageous.com/windowflow/'

  # The original download host no longer resolves and no replacement was found.
  disable! date: '2026-10-13', because: :no_longer_available

  app 'WindowFlow.app'
end
