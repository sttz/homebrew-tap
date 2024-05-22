cask 'install-unity' do
  version '2.12.1'
  sha256 'daab15d98131497abd9051a84bf3ca66a7271c4c50fdd9c1e9b32b0fbdbee483'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
