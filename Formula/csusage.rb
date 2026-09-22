class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.17/csusage-csusage-v0.4.17-x86_64-apple-darwin.tar.gz"
    sha256 "af303b914403a164e314f6cabd1d7e9c7ca89d97b38e01a4ebaaa820bba8adc1"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.17/csusage-csusage-v0.4.17-aarch64-apple-darwin.tar.gz"
    sha256 "176b07c7d025f4ed8c1a05b8617bf24684e2d4c90df8fc56acee6dba4f28b0f7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.17/csusage-csusage-v0.4.17-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ca9ac0c7cfd35e2ae6235c6f8a2e774ed113c5490483a820519ffd8fef9c0df4"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.17/csusage-csusage-v0.4.17-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "eb799cb0a38975f6c3227ded424c007ee202f9a7254d66608bc73959c22ac741"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
