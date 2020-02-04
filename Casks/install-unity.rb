cask 'install-unity' do
  version '2.7.1'
  sha256 '58e11ce52e31a56e505851587690e5c3f41ec88909dfcfbd08b7f2941d1a9fd4'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
