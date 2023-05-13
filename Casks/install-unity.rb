cask 'install-unity' do
  version '2.12.0'
  sha256 '83c2ee0a5c3ab45c4fd4e83332d23c5d6c579d19f8b371addcc217129fe620d9'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
