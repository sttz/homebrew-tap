class InstallUnity < Formula
  desc "Script to install Unity 3D versions from the command-line"
  homepage "https://github.com/sttz/install-unity"
  url "https://github.com/sttz/install-unity/archive/2.11.0.tar.gz"
  sha256 "e55042a4fb2d43468f55626cd036f5b7a1aefab34dee3ae6cd1a51bce946b91b"
  head "https://github.com/sttz/install-unity.git", branch: "next"

  depends_on "dotnet"

  def install
    args = %W[
      --configuration Release
      --framework net6
      --output #{libexec}
    ]

    system "dotnet", "publish", "Command/Command.csproj", *args

    env = { DOTNET_ROOT: "${DOTNET_ROOT:-#{Formula["dotnet"].opt_libexec}}" }
    (bin/"install-unity").write_env_script libexec/"Command", env
  end

  test do
    system "#{bin}/install-unity", "--version"
  end
end
