class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.24/csusage-csusage-v0.4.24-x86_64-apple-darwin.tar.gz"
    sha256 "44dafe9d33a865e1ea06fdbbffb570745aef9833355a45a7c7399bf3c3b4f471"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.24/csusage-csusage-v0.4.24-aarch64-apple-darwin.tar.gz"
    sha256 "2f855cbbbab7b488fde4dd597906d8541492447828d59fdfbb0810408614f22d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.24/csusage-csusage-v0.4.24-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "576602da516de8e3d4ac526d2ea8d278cbb09cc0335b561b58b464e33f3b6568"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.24/csusage-csusage-v0.4.24-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "c38f5f49944e527e8b01974a2cb336aef6eb4d355e48d5faf6cf1654c8207bf1"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
