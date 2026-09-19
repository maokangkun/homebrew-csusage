class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.8/csusage-csusage-v0.4.8-x86_64-apple-darwin.tar.gz"
    sha256 "d9bac81d14069d4a888ee2684d5963ba0810028a18629b37f09e26a8bf00a5a0"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.8/csusage-csusage-v0.4.8-aarch64-apple-darwin.tar.gz"
    sha256 "06c7c2a52dba06533317bac1e50817a60301466257554e389a5159ef7d9cb1cf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.8/csusage-csusage-v0.4.8-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c73ceb9b4ed2e388a54a47ce2c02d0f1f1c367977a4bc3bd79b6a0eec4416378"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.8/csusage-csusage-v0.4.8-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "25bb5ffe8025dc9ea547af8a5b8fb83025b4864d8b4a2f1f57a445bad3685436"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
