cask 'install-unity' do
  version '2.13.0'
  sha256 '086165227a034e848ad59b2cd1c8013a674dd2591c413f677cfc5f0682153408'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
