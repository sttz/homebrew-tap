cask 'install-unity' do
  version '2.4.0'
  sha256 '16a3136e0af7c4a1f965f9a4d55bcc24bddd914aff4b8fa436eff5d0639f16fb'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
