class Expresso < Formula
  desc "expresso is a command line interface to control the ExpressVPN app"
  homepage "https://github.com/sttz/expresso"
  url "https://github.com/sttz/expresso/archive/1.2.1.tar.gz"
  sha256 "568f435593ac08aa522aeb3976a279df026ab24d681e405e4412908e315d52c1"
  head "https://github.com/sttz/expresso.git"

  depends_on "mono"

  def install
    system "msbuild", "-r", "-p:Configuration=Release", "-p:TargetFrameworks=net472", "expresso.csproj"
    libexec.install Dir["bin/Release/net472/*"]

    (bin/"expresso").write <<~EOS
      #!/bin/bash
      #{which "mono"} #{libexec}/expresso.exe "$@"
    EOS
  end

  test do
    system "#{bin}/expresso", "--version"
  end
end
