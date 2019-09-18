cask 'install-unity' do
  version '2.5.0'
  sha256 '103b807ecfc62f881a97ee61ce771ece6f7b0cf9effa083a0b67ba1fc0e9819f'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
