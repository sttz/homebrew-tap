cask 'expresso' do
  version '1.0.1'
  sha256 '36d26821d724738e3fa48423e7d60a3f80a72255f2dec4ff64c3b6babfd114d1'

  conflicts_with formula: 'expresso'

  url "https://github.com/sttz/expresso/releases/download/#{version}/expresso-#{version}.zip"
  name 'expresso'
  homepage 'https://github.com/sttz/expresso/'

  binary 'expresso'
end
