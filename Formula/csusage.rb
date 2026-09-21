class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.10/csusage-csusage-v0.4.10-x86_64-apple-darwin.tar.gz"
    sha256 "fecc7f7b8feef75e211aecc029b895a39c7d8713ea37e981cf20e35f9cea1e2f"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.10/csusage-csusage-v0.4.10-aarch64-apple-darwin.tar.gz"
    sha256 "cf114d3b26ed683c937407232ffeb6d5b704901723466cb9202a8f3691046f15"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.10/csusage-csusage-v0.4.10-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f397352e461d32957e04f002d51fa9fc636cb73a52f4f82bf432ec0f5f84829c"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.10/csusage-csusage-v0.4.10-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8b7c1c814daf6f9f28c51e936ce66f66c721a2435e15ca36690491af5e4c1cbc"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
