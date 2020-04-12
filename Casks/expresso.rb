cask 'expresso' do
  version '1.0.0'
  sha256 'c39299cb6e6cfe92083726375329e241a6bc4c98061c9074c8619143a76edaa0'

  conflicts_with formula: 'expresso'

  url "https://github.com/sttz/expresso/releases/download/#{version}/expresso-#{version}.zip"
  name 'expresso'
  homepage 'https://github.com/sttz/expresso/'

  binary 'expresso'
end
