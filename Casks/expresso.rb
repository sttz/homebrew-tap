cask 'expresso' do
  version '1.3.0'
  sha256 '683e9084f1448e03b959c7256933108c6f486e0e06e608ef3b678e651b8357b2'

  conflicts_with formula: 'expresso'

  url "https://github.com/sttz/expresso/releases/download/#{version}/expresso-#{version}-osx64.zip"
  name 'expresso'
  homepage 'https://github.com/sttz/expresso/'

  binary 'expresso'
end
