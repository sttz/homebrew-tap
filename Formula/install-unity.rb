class InstallUnity < Formula
  desc "Script to install Unity 3D versions from the command-line"
  homepage "https://github.com/sttz/install-unity"
  url "https://github.com/sttz/install-unity/archive/2.13.1.tar.gz"
  sha256 "52448eec3b657a0300f55484b8e53e546f2cf7f763ba565e1d5b8725f23f0d31"
  head "https://github.com/sttz/install-unity.git", branch: "next"

  depends_on "dotnet"

  def install
    args = %W[
      --configuration Release
      --framework net8.0
      --output #{libexec}
    ]

    system "dotnet", "publish", "Command/Command.csproj", *args

    env = { DOTNET_ROOT: "${DOTNET_ROOT:-#{Formula["dotnet"].opt_libexec}}", DOTNET_ROLL_FORWARD: "Major" }
    (bin/"install-unity").write_env_script libexec/"Command", env
  end

  test do
    system "#{bin}/install-unity", "--version"
  end
end
