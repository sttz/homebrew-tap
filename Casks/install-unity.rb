cask 'install-unity' do
  version '2.8.2'
  sha256 '02e91a6f9276df4d544bb56c5ac5fd6df9ed068ee5c2bf435581ee797b749579'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
