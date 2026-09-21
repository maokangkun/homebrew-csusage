class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.9/csusage-csusage-v0.4.9-x86_64-apple-darwin.tar.gz"
    sha256 "0d7779e4a2949bc6dcc39bc49dff18ae0418bb2bc907c5b31f4e096da13ad812"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.9/csusage-csusage-v0.4.9-aarch64-apple-darwin.tar.gz"
    sha256 "778d3ac8a48da397b0e09cfa49f8875167e1c5c28ab38adeb16071b26551eb40"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.9/csusage-csusage-v0.4.9-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2f997373e889c29da5ffb1fce86a7628b80a7fd8c7a8cacb64b15a6be27ea18f"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.9/csusage-csusage-v0.4.9-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1e7d9e4d59ec5e58e2634926e66ad06da0fc6a88d92b0ca0484bda1b5c065711"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
