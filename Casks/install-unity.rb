cask 'install-unity' do
  version '2.7.0'
  sha256 '1068e5365163c018e9aa559e66216cb410b785ec33a3a62a95c2ec4f39f36c83'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
