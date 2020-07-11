cask 'install-unity' do
  version '2.8.1'
  sha256 '65291693d9d30820368138c3dcb168add4e0b4f9f166ccc54c2066be9be20517'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
