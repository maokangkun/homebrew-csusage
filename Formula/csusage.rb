class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.15/csusage-csusage-v0.4.15-x86_64-apple-darwin.tar.gz"
    sha256 "edcc76ff0dea55157789010165131b7aa3f57229f5081a363a3dfcc21956d974"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.15/csusage-csusage-v0.4.15-aarch64-apple-darwin.tar.gz"
    sha256 "6bf6a9a6cda3d5c16a4c7deff927009ca8f09b8dfcc1950f6c0258a5be63334a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.15/csusage-csusage-v0.4.15-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a0a7283c1f082fda572fb47c0744cd410a0a6547d7c426abce07a2413d8dc063"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.15/csusage-csusage-v0.4.15-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1a00426814610fddaae412ff88f6bd120d3394de9fb4003c9e60d10503f6ec73"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
