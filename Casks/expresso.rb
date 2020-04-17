cask 'expresso' do
  version '1.0.2'
  sha256 '24aea3db2fe1f037993c6463de996dcc4e1ac57a203f6740e0169bf97e6010a3'

  conflicts_with formula: 'expresso'

  url "https://github.com/sttz/expresso/releases/download/#{version}/expresso-#{version}.zip"
  name 'expresso'
  homepage 'https://github.com/sttz/expresso/'

  binary 'expresso'
end
