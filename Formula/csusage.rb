class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.12/csusage-csusage-v0.4.12-x86_64-apple-darwin.tar.gz"
    sha256 "444a3d945f8f6660f0a7be8f8b5f670ede0bc99f08ab63dc6e98e8c3748bd92e"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.12/csusage-csusage-v0.4.12-aarch64-apple-darwin.tar.gz"
    sha256 "34a9efbe7050c67983e603fea9104a1c2a749e704746dfde41c8701638ebde1d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.12/csusage-csusage-v0.4.12-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a1fab675f1114ae3120d3826688a9ff5c6a4a8ca8f7bd6f903330f7970fc6e0a"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.12/csusage-csusage-v0.4.12-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1f8f6bf7383076a26575e72d75191983ff242bfdb0187c4b0d1ff35fd22826d8"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
