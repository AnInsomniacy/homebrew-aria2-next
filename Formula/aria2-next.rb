class Aria2Next < Formula
  desc "Download engine with aria2's command-line and JSON-RPC interface"
  homepage "https://github.com/AnInsomniacy/aria2-next"
  version "3.1.1"
  license "GPL-2.0-only"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-arm64"
      sha256 "53f2430ae11af60864694c4edb9ec6e8dd1125c54c216671ed395cd28d5464c1"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-x86_64"
      sha256 "08097252ea5101dd3b8f74e3b50e530f16c8848abd079688945c7907e976a16a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-aarch64"
      sha256 "e848ba182f716458f719415d2186b6435906aff20c28b6649819653301d11cb2"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-x86_64"
      sha256 "027b46099c32a9085e269accfe6089397c84cea0c0b37887bbda0a8b291c20d6"
    end
  end

  def install
    bin.install Dir["aria2-next-*"].first => "aria2-next"
  end

  test do
    assert_match "aria2-next version #{version}", shell_output("#{bin}/aria2-next --version")
  end
end
