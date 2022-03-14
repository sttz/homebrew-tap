cask 'install-unity' do
  version '2.10.1'
  sha256 '2142f098a45bb4cd723f37f5cb79aefd8eef9727669bff418c4cc350915103ef'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
