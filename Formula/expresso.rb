class Expresso < Formula
  desc "expresso is a command line interface to control the ExpressVPN app"
  homepage "https://github.com/sttz/expresso"
  url "https://github.com/sttz/expresso/archive/1.3.0.tar.gz"
  sha256 "c9ff0daffb81ab46f1cd68bfa80b1b301bc5c40a50745a12e4d789d629aea42e"
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
