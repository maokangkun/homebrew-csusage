class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.6/csusage-csusage-v0.4.6-x86_64-apple-darwin.tar.gz"
    sha256 "52751826e82747f4d1dc2f7cce465437ce5ed8100fa8cacc0585c173622ede5a"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.6/csusage-csusage-v0.4.6-aarch64-apple-darwin.tar.gz"
    sha256 "3083e29411fce5f8d3f0b0a45351daa42d2640bbb15d7ea3fc5816f4212974f6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.6/csusage-csusage-v0.4.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "33293a1d343dc8057fed8a50b1cef4d5b94c8c1c9969a995b0610fcb246ce1e9"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.6/csusage-csusage-v0.4.6-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e96a41904d9cc1532915f0cfafd94980bbdea9dd8838791466fd0a82a4d21185"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
