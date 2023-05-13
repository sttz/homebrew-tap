class InstallUnity < Formula
  desc "Script to install Unity 3D versions from the command-line"
  homepage "https://github.com/sttz/install-unity"
  url "https://github.com/sttz/install-unity/archive/2.12.0.tar.gz"
  sha256 "d076f6d4ba882709b20bfae9135e9df4adc61d6ab4945e6e22589018f2815693"
  head "https://github.com/sttz/install-unity.git", branch: "next"

  depends_on "dotnet"

  def install
    args = %W[
      --configuration Release
      --framework net7.0
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
