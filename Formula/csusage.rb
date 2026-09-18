class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.4/csusage-csusage-v0.4.4-x86_64-apple-darwin.tar.gz"
    sha256 "a519e3744e1f32f0a4efdf853a67c99f7b97733c901eb8c6b2489335cc4e5080"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.4/csusage-csusage-v0.4.4-aarch64-apple-darwin.tar.gz"
    sha256 "5086dbd137d636ed4ac41affa175a6fc5e3f14a2a58b3d3bcbc22da61d8274a2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.4/csusage-csusage-v0.4.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9a817d314dad989eb1e3565335187d580b7a5ffdee84c2d62753561723bc38d3"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.4/csusage-csusage-v0.4.4-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1a8319e21a76d08979d0178963cb0984a9320150d3e0b12c4c89caf5380c06e4"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
