class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.23/csusage-csusage-v0.4.23-x86_64-apple-darwin.tar.gz"
    sha256 "3bdfe71685da8cba6514dde57072d3b041dde900f8b1b9709ec9d513f6179964"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.23/csusage-csusage-v0.4.23-aarch64-apple-darwin.tar.gz"
    sha256 "17a4c4e8cafcb112ad9641105caf747047cd87a8ce1787106cc669fbc25d4085"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.23/csusage-csusage-v0.4.23-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5cd91019f8a1018f1cc3ca36cdde554b08f77b4c86ccddeeb2d9f6de9a447420"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.23/csusage-csusage-v0.4.23-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "36853afa3582780804878eeb4c2872149a405b925c61b57144276b53f0b158c2"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
