class InstallUnity < Formula
  desc "Script to install Unity 3D versions from the command-line"
  homepage "https://github.com/sttz/install-unity"
  url "https://github.com/sttz/install-unity/archive/2.8.2.tar.gz"
  sha256 "26ba7cb695a81eaa484c20952a244b0d13be0bf7f8688a15f2ef913cc543d9bf"
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
