class Aria2Next < Formula
  desc "Download engine with aria2's command-line and JSON-RPC interface"
  homepage "https://github.com/AnInsomniacy/aria2-next"
  version "3.0.9"
  license "GPL-2.0-only"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-arm64"
      sha256 "be6e8ee76a8124fca03d20fa2a8446bac35ea0f24df7e159aa9206106bcfe47c"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-x86_64"
      sha256 "68b4c64c338b27b2bf929b9110393420908f79de4e33e6037973b38577b715a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-aarch64"
      sha256 "23ce70729460bed892d84bc73b04b62369dd5b207040cd4bee22f4166af4a9a0"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-x86_64"
      sha256 "ca0bfc952f15d5aa79afa73189f6665694a61b6ed0f55d44009389f8f08cc6db"
    end
  end

  def install
    bin.install Dir["aria2-next-*"].first => "aria2-next"
  end

  test do
    assert_match "aria2-next version #{version}", shell_output("#{bin}/aria2-next --version")
  end
end
