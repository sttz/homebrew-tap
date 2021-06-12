cask 'expresso' do
  version '1.2.0'
  sha256 '5456b1c638f1f67b1991e0f986bab4920903f48cc28e8fd566be14b4b01ef95a'

  conflicts_with formula: 'expresso'

  url "https://github.com/sttz/expresso/releases/download/#{version}/expresso-#{version}-osx64.zip"
  name 'expresso'
  homepage 'https://github.com/sttz/expresso/'

  binary 'expresso'
end
