class Aria2Next < Formula
  desc "Download engine with aria2's command-line and JSON-RPC interface"
  homepage "https://github.com/AnInsomniacy/aria2-next"
  version "3.1.0"
  license "GPL-2.0-only"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-arm64"
      sha256 "328964a77fbf6ef958d5f828a9c20eb6c8cab01ae0a1864128c6af42bf144078"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-x86_64"
      sha256 "d918ae011599cd3ebe967e721961a52c185306c965ea025357f9dca11613b989"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-aarch64"
      sha256 "38019a34ac5edd4dc7443fd7214842dc2c29b38202a1a65a6271c5e994fbd0d0"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-x86_64"
      sha256 "5a264fc39312cc1abc6d12cfd2d96464d27f0349fd7cb5e0cbf1ee5bd686e890"
    end
  end

  def install
    bin.install Dir["aria2-next-*"].first => "aria2-next"
  end

  test do
    assert_match "aria2-next version #{version}", shell_output("#{bin}/aria2-next --version")
  end
end
