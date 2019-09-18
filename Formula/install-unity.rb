class InstallUnity < Formula
  desc "Script to install Unity 3D versions from the command-line"
  homepage "https://github.com/sttz/install-unity"
  url "https://github.com/sttz/install-unity/archive/2.5.0.tar.gz"
  sha256 "175b2c780592aceb681eb76b34e4eceb84fb3952092fa6961621d2ac8b8f5b85"
  head "https://github.com/sttz/install-unity.git", :branch => "next"

  depends_on "mono"

  def install
    system "msbuild", "-r", "-p:Configuration=Release", "-p:TargetFramework=net472", "Command/Command.csproj"
    libexec.install Dir["Command/bin/Release/net472/*"]

    (bin/"install-unity").write <<~EOS
      #!/bin/bash
      #{which "mono"} #{libexec}/Command.exe "$@"
    EOS
  end

  test do
    system "#{bin}/install-unity", "--version"
  end
end
