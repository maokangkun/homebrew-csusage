class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.21/csusage-csusage-v0.4.21-x86_64-apple-darwin.tar.gz"
    sha256 "48b4bb09b0a7435e3152c3a3a388d0fce8a860b25360e940c6e64bcdaf46dbfc"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.21/csusage-csusage-v0.4.21-aarch64-apple-darwin.tar.gz"
    sha256 "5dc49a1e7936daa4a3ce56e84d14ab0fecd611f0cafb3badd3bac2f1dd384d85"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.21/csusage-csusage-v0.4.21-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "abaff8b8440b8d434e9e5484210245e555b0c12ca9cf41a69a3b21d0e58c80a3"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.21/csusage-csusage-v0.4.21-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "093a9a567e02e132f3329e8c2b74009252a332f14925f935e2956d31d90de779"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
