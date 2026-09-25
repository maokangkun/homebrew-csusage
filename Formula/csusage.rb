class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.18/csusage-csusage-v0.4.18-x86_64-apple-darwin.tar.gz"
    sha256 "8bc305a309854a436b0244060e434d9d947855491679e21577e95776131f71c2"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.18/csusage-csusage-v0.4.18-aarch64-apple-darwin.tar.gz"
    sha256 "b263768faafced52970d99251d444f00dfc50112829244aa91379edc88720d5d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.18/csusage-csusage-v0.4.18-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a447ef8ac8096816434bec09fcaf2d2b9e05ad4993b8fae104e932f2fbfb8960"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.18/csusage-csusage-v0.4.18-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b7102f367d97bde34b5e97bfe97bb7918505e1e518a8b304513d506df9abf763"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
