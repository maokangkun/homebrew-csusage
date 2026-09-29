class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.25/csusage-csusage-v0.4.25-x86_64-apple-darwin.tar.gz"
    sha256 "b87a50d9163410ff28e23d5b7173a6812dd8df88ee67b3e81eac70f21640f5da"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.25/csusage-csusage-v0.4.25-aarch64-apple-darwin.tar.gz"
    sha256 "eac11492eece276c94d3399b0cf1b005fa3ae2586b37f70189ee92ecbb24fd83"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.25/csusage-csusage-v0.4.25-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2b00d82cc809a56a1d66a5c8f3c8b8a482c2b6f991352aec616cf6695fc27f44"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.25/csusage-csusage-v0.4.25-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e0c97acd790f5df6e43a852d9fddeecce684cdc0e61f28af01cb4925e51df8da"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
