class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.11/csusage-csusage-v0.4.11-x86_64-apple-darwin.tar.gz"
    sha256 "afd8a9aac13dee55924b0ae37f12bd3b7a3cd95eff6d4336ecc87ac0a30002fd"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.11/csusage-csusage-v0.4.11-aarch64-apple-darwin.tar.gz"
    sha256 "8e79b23361fe74184271a7960a0bcce9dcc7b3cca6c4e667a1ed5b7633108e20"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.11/csusage-csusage-v0.4.11-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "927de94e09ce4c88c89a6bbed2b3088d57b94b42eaf1e8504386467d0e5e9345"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.11/csusage-csusage-v0.4.11-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3b8ff146683a9d7a491f83f577aad7d97c6f066306205c052a0a26c19dc49c31"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
