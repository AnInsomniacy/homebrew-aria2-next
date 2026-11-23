class Aria2Next < Formula
  desc "Download engine with aria2's command-line and JSON-RPC interface"
  homepage "https://github.com/AnInsomniacy/aria2-next"
  version "3.1.2"
  license "GPL-2.0-only"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-arm64"
      sha256 "d85ce293bdfeb85b070aed88bd8fb391fd0fc11cd3d574af2788d4b52b2ca38c"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-x86_64"
      sha256 "c7303ab80b286819f335cac09fa961eabc0bd47c8d8a0e6d9cbebe84510b4585"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-aarch64"
      sha256 "99efd3319eb7a3010dbe72953378c1b6f6be9a4b4302dcb8135314dd084d4845"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-x86_64"
      sha256 "6f7e33935a80a2561b9748ebe03da718f9ee9f0a1ae636e8e5975a45b7ab98b7"
    end
  end

  def install
    bin.install Dir["aria2-next-*"].first => "aria2-next"
  end

  test do
    assert_match "aria2-next version #{version}", shell_output("#{bin}/aria2-next --version")
  end
end
