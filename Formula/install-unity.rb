class InstallUnity < Formula
  desc "Script to install Unity 3D versions from the command-line"
  homepage "https://github.com/sttz/install-unity"
  url "https://github.com/sttz/install-unity/archive/2.9.0.tar.gz"
  sha256 "0267c7fe2a926d1e2db4fa8a037ca1567438a267c864a66568ca093ebb1da100"
  head "https://github.com/sttz/install-unity.git", :branch => "next"

  depends_on "mono"

  def install
    system "msbuild", "-r", "-p:Configuration=Release", "-p:TargetFrameworks=net472", "Command/Command.csproj"
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
