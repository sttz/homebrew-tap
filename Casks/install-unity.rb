cask 'install-unity' do
  version '2.7.2'
  sha256 '0bd9681788894134b93bd4740944eab276c8bb82ccb475c29da248010df49ffd'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
