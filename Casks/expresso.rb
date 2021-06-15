cask 'expresso' do
  version '1.2.1'
  sha256 '204593b18a5c1ee8fd5c0f420c8ea362571c4916c5abb3f3782ffef63eb85e1f'

  conflicts_with formula: 'expresso'

  url "https://github.com/sttz/expresso/releases/download/#{version}/expresso-#{version}-osx64.zip"
  name 'expresso'
  homepage 'https://github.com/sttz/expresso/'

  binary 'expresso'
end
