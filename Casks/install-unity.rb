cask 'install-unity' do
  version '2.13.1'
  sha256 '43b27a1c9cd01203541aa4aa7162f2af2800bcd27af636787107a2cfdf18d0cb'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
