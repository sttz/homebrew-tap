cask 'install-unity' do
  version '2.11.1'
  sha256 '0fe01345792a64d830b8ef94998d99f3d796827086506e3ee2ca9e3981c6bde2'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
