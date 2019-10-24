cask 'install-unity' do
  version '2.5.1'
  sha256 '711652e5ecc9a7c18f11b3f497738e1fb012780d58f63292f483618dbd81ea0a'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
