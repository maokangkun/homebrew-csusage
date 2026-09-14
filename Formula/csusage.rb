class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.2.0/csusage-csusage-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "20569b62ecf02a73e3b50439cea09db50348ed62b150a4951e8b53f3a3e90cd4"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.2.0/csusage-csusage-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "3bd65d8bc1b4dd105a89930648350c3f1a5740e27e1f1e9c1b5002529ede61ac"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.2.0/csusage-csusage-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d3ec4d7d1c95ef530714ab0f2d6df4c8ab44b22f63e1e6594bce1a3339f953a"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.2.0/csusage-csusage-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "901b4646b139d5f6249b94d0d6bdf95dbc6c8a4ea2d41c61581c83ff18e99f4a"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "ccusage", shell_output("#{bin}/csusage --version")
  end
end
