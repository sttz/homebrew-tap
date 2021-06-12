class Expresso < Formula
  desc "expresso is a command line interface to control the ExpressVPN app"
  homepage "https://github.com/sttz/expresso"
  url "https://github.com/sttz/expresso/archive/1.2.0.tar.gz"
  sha256 "bad26df80c208607141a792ef5ff0838ea9fa3acedacf214d26b88ba4462c14f"
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
