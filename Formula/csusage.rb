class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.5/csusage-csusage-v0.4.5-x86_64-apple-darwin.tar.gz"
    sha256 "410d65d56b84e18f2eb0b6d51ba8f6c2cd2bf2307a7ccb4ba1320022631d7068"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.5/csusage-csusage-v0.4.5-aarch64-apple-darwin.tar.gz"
    sha256 "9ef3f99339b5e3f4e8b46639e46612042106bc3df8bdd068b3a4bfbac0d06310"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.5/csusage-csusage-v0.4.5-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d809a40a9821fb994cd5beb98ac97a0d96780c7f550c1408d15dcbacd1e65848"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.5/csusage-csusage-v0.4.5-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "15e679ac0d2b39256d973be361a3d084bdc7089e349dccb21f910ec4e732b5a5"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
