cask 'install-unity' do
  version '2.9.0'
  sha256 'ceeceb3f4345db36628f0772d23e1460a0de97769e719c446cf0e13e57ea746f'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
