class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.7/csusage-csusage-v0.4.7-x86_64-apple-darwin.tar.gz"
    sha256 "9afda70db39c1654b1fbd06fbaaace31ed2f9b3a857f52324cf6d59d65de1b52"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.7/csusage-csusage-v0.4.7-aarch64-apple-darwin.tar.gz"
    sha256 "7b178290e22c2d81098d9c1391319e1ba4df40aa6e715d5bdaf657749e858839"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.7/csusage-csusage-v0.4.7-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b3df5809972b166071d91f52a76691e680a77de23f3c16adac741b4d6a99ec5c"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.7/csusage-csusage-v0.4.7-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "15dd0d0c2da3f44e153c61658ceff36f4f2548847b1718bfa178757ad8f1c529"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
