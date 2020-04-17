class Expresso < Formula
  desc "expresso is a command line interface to control the ExpressVPN app"
  homepage "https://github.com/sttz/expresso"
  url "https://github.com/sttz/expresso/archive/1.0.2.tar.gz"
  sha256 "3a0511589956106169aa2928df048d026ba5c49b34c1e349010cf2a98721f8bb"
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
