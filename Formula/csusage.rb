class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.22/csusage-csusage-v0.4.22-x86_64-apple-darwin.tar.gz"
    sha256 "4aab75b0323efa4b7fe5154a97b4ec280830e7c9fb015f65d8a053a10477fda7"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.22/csusage-csusage-v0.4.22-aarch64-apple-darwin.tar.gz"
    sha256 "6295d2d512b2a27db51520e616fd445857579858ce588a84e965b8140310747d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.22/csusage-csusage-v0.4.22-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1994c9f267cd7593f5682511dca99d9cde3420736d0ef0acc6d68809c47ce771"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.22/csusage-csusage-v0.4.22-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "25097289a4fa5679f06534e411a49b1d9b727d96473592106acc476dc651b9d3"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
