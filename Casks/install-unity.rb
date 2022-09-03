cask 'install-unity' do
  version '2.11.0'
  sha256 'b852b3db95dbbe70af5659164663130d5d510e19cf6c3a9d5c2e665407bf8e1e'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
