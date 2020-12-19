class Expresso < Formula
  desc "expresso is a command line interface to control the ExpressVPN app"
  homepage "https://github.com/sttz/expresso"
  url "https://github.com/sttz/expresso/archive/1.1.0.tar.gz"
  sha256 "ae7c8f338c6008b68b60a910c0e1664c7db04539b5c7a4eabba690c519742df6"
  head "https://github.com/sttz/expresso.git", :branch => "next"

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
