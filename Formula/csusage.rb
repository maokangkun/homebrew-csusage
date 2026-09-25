class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.20/csusage-csusage-v0.4.20-x86_64-apple-darwin.tar.gz"
    sha256 "eda38fb9e577dabe1ff504572b13fc0f0b01724cb574640663b9d20038b577d9"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.20/csusage-csusage-v0.4.20-aarch64-apple-darwin.tar.gz"
    sha256 "cb0124a362e6f980e277ca8e154b85ee71a21c5a26684685684c7b250e4783f4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.20/csusage-csusage-v0.4.20-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "57066dc1503b70cd85577d9e4463940fe8a4809d165ed4383dafb4b1fd9823ea"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.20/csusage-csusage-v0.4.20-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "91583d0268a4e14efea099de49ad16116502ec2c1cf923c6986dde4b5512c0c9"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
