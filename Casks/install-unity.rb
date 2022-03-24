cask 'install-unity' do
  version '2.10.2'
  sha256 '1fcba8da33b08df8d43974ddcca9d9ed48127754ca3a6272477af8d1c60de1f2'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
