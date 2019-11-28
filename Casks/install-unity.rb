cask 'install-unity' do
  version '2.6.0'
  sha256 'e0b23e3780685be48d03dd828937aaee32d786c6f655be603004965445a4472f'

  conflicts_with formula: 'install-unity'

  url "https://github.com/sttz/install-unity/releases/download/#{version}/install-unity-#{version}.zip"
  name 'install-unity'
  homepage 'https://github.com/sttz/install-unity/'

  binary 'install-unity'
end
