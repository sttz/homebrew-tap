cask 'expresso' do
  version '1.1.0'
  sha256 'c949baf9ab23431d80e9136808d326f97144ed4c6ef52b4e61b1aad921b14f65'

  conflicts_with formula: 'expresso'

  url "https://github.com/sttz/expresso/releases/download/#{version}/expresso-#{version}.zip"
  name 'expresso'
  homepage 'https://github.com/sttz/expresso/'

  binary 'expresso'
end
