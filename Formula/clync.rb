class Clync < Formula
  desc "Encrypted sync for Claude Code across machines"
  homepage "https://github.com/Saturate/clync"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saturate/clync/releases/download/v0.4.0/clync-aarch64-apple-darwin.tar.gz"
      sha256 "24df36ca4b4a131956d7f920ca5b25c434a2443cdb6b1339b5da733a35195053"
    else
      url "https://github.com/Saturate/clync/releases/download/v0.4.0/clync-x86_64-apple-darwin.tar.gz"
      sha256 "9c9a506822474e4e9f7843fbfd0448e135c69fe4ccf23c2811078808f33ed6e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saturate/clync/releases/download/v0.4.0/clync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31d117cc4f1b0408acb3a76b12d6b6546bd7db18b91b1fb59fb62a8e08d83009"
    else
      url "https://github.com/Saturate/clync/releases/download/v0.4.0/clync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc4947e5f8e604c34a654bb15390ffc8abe718645a34df5b840aa35f373c7466"
    end
  end

  def install
    bin.install "clync"
  end

  test do
    assert_match "clync", shell_output("#{bin}/clync --version")
  end
end
