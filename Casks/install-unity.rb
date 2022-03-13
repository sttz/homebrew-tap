cask 'install-unity' do
  version '2.10.0'
  sha256 '9b5e469692c690f04ac73aec32cfeacc2e33f308f3046d4dc178c1ab68db2ed4'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
