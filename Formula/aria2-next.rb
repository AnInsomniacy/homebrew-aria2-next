class Aria2Next < Formula
  desc "Download engine with aria2's command-line and JSON-RPC interface"
  homepage "https://github.com/AnInsomniacy/aria2-next"
  version "3.0.10"
  license "GPL-2.0-only"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-arm64"
      sha256 "ba93b34c2ba831ecf9236684b9627a56d4b02a99377fa49d965548fdca549563"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-macos-x86_64"
      sha256 "4fe1624cb36c4d985ea17bc5895bfa458b8861ec943fd1bccd511f05bb2b2b7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-aarch64"
      sha256 "b9066d5197f2c4ca4082961a904f20f5f8fc0e9be3dd44b7c71e1cd245e78e41"
    end
    on_intel do
      url "https://github.com/AnInsomniacy/aria2-next/releases/download/v#{version}/aria2-next-#{version}-linux-x86_64"
      sha256 "f678627620e6da2917252c9e2b34f84e8b902e2de457f77551361e62e8d8eed0"
    end
  end

  def install
    bin.install Dir["aria2-next-*"].first => "aria2-next"
  end

  test do
    assert_match "aria2-next version #{version}", shell_output("#{bin}/aria2-next --version")
  end
end
