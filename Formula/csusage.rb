class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.13/csusage-csusage-v0.4.13-x86_64-apple-darwin.tar.gz"
    sha256 "61d443d3a8cf86058837a422a0b7312cf86dc03c47fd5b71d11ed60939009343"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.13/csusage-csusage-v0.4.13-aarch64-apple-darwin.tar.gz"
    sha256 "1a1ab4f9f4e106c6c5fbbaf0e60fe002cb7f7be2f0ebe178e6a6499311b57043"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.13/csusage-csusage-v0.4.13-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a33bab921318f1a231a7f3dfaa8e9299b177a1565c6e9d78344e86b1c6071db7"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.13/csusage-csusage-v0.4.13-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "fcfd3aa7f35d428a7193709964064cf1047964d4c35359e332a2b876f1f967c3"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
