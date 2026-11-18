class Clync < Formula
  desc "Encrypted sync for Claude Code across machines"
  homepage "https://github.com/Saturate/clync"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saturate/clync/releases/download/v0.6.0/clync-aarch64-apple-darwin.tar.gz"
      sha256 "bda71d2d991c975caf232ed8a3559acb74d12f324e237ef434665298d1062a58"
    else
      url "https://github.com/Saturate/clync/releases/download/v0.6.0/clync-x86_64-apple-darwin.tar.gz"
      sha256 "9d989618931500e1525d9aa32ed40265a9e6f38a9f075546ade2a4964781ed2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saturate/clync/releases/download/v0.6.0/clync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db7c896e2a03efa1c8f2dc524f39430fd880a170e690a82f11f16e72caa35649"
    else
      url "https://github.com/Saturate/clync/releases/download/v0.6.0/clync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d315a711e1809d45aa8850050178a3289296f1561a7446f0b745de5a9849a7a8"
    end
  end

  def install
    bin.install "clync"
  end

  test do
    assert_match "clync", shell_output("#{bin}/clync --version")
  end
end
