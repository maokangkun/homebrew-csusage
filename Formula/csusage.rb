class Csusage < Formula
  desc "Token usage reports for Claude Science"
  homepage "https://github.com/maokangkun/csusage"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/csusage/releases/download/v0.1.1/csusage-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "d6d67808a0f6db07b463a6c79763503e6724928c8a393d310736d5418d3ab10a"
    else
      url "https://github.com/maokangkun/csusage/releases/download/v0.1.1/csusage-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "6401aec0df33b2c3cf713aed8b0a4559397ab44a62dc3fc23cd2ded6acb74765"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/csusage/releases/download/v0.1.1/csusage-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "961efa3eca6a879d907d92a47815bc9ff1406c6e89b215a21a436f67bd0f6b59"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/csusage/releases/download/v0.1.1/csusage-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b78c3edf042c2d2f2f1f783d9c36c0a73f0ae987f93e9557ecb766c656e1815"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csusage --version")
  end
end
