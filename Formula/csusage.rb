class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.16/csusage-csusage-v0.4.16-x86_64-apple-darwin.tar.gz"
    sha256 "d45b41e2793d1a0c541dd735a56f8d9f0c17743acc40b4c1c76f8ec8decbf04b"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.16/csusage-csusage-v0.4.16-aarch64-apple-darwin.tar.gz"
    sha256 "8912e20d47b2d4e84640957f58f9b3b673f6b034b821466add7063c4b7f5896f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.16/csusage-csusage-v0.4.16-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4f8ab2afb4d5d950fcc250b039880cb8b685f0612e4301923cc64f9ecf2625a4"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.16/csusage-csusage-v0.4.16-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "45eceaeeddb1676571508e4c3ea4aa5f3a80bd805a053e1c9e2b83523307e01a"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
