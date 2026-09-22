class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.14/csusage-csusage-v0.4.14-x86_64-apple-darwin.tar.gz"
    sha256 "aa0c4404785fb45f13d59f18ece1dad0eb69a9244616319462b3e035884ae73d"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.14/csusage-csusage-v0.4.14-aarch64-apple-darwin.tar.gz"
    sha256 "e932cd6455084c0e75b01704f8f239506d3071004907f37ff71f3c8fceeb65b1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.14/csusage-csusage-v0.4.14-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3d7cfd33b074342fc5bbc30a8132df7a569de31518bc097a9d515cc6d750a53d"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.14/csusage-csusage-v0.4.14-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "739caae3d52da6b6ad4c75c49ceca7010945a2f13a844a521218edba5ca91503"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
