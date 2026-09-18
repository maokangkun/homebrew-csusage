class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.2/csusage-csusage-v0.4.2-x86_64-apple-darwin.tar.gz"
    sha256 "568cc8ed2b58b3b24e58ba255a505f9e924d9b0ad49fd71d4026e9958ff575f4"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.2/csusage-csusage-v0.4.2-aarch64-apple-darwin.tar.gz"
    sha256 "1261e79b625e9f5466aaad242f5883321f3a75d9d91d5c8205e58f213222bc14"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.2/csusage-csusage-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aac283f700fb9ec40b0a5e79caca2d49b8392dffa3d5cb41af2413048243e19e"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.2/csusage-csusage-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "666f21731b91cc8f1b29d8239726076b18cb38294f4558fa42748e35a62c948c"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
