cask 'install-unity' do
  version '2.8.0'
  sha256 '726f1b3b0c3a7dfda8f17735ba3cabd8325d0fd130afe8c030b7bb788e1b6bed'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
