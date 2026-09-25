class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.19/csusage-csusage-v0.4.19-x86_64-apple-darwin.tar.gz"
    sha256 "ede74c2652ce27615cbdb968ad42549ed57ad9f0fa7007e287aa777ac922b61c"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.19/csusage-csusage-v0.4.19-aarch64-apple-darwin.tar.gz"
    sha256 "20e83c5a1cbc23dab8bf5f09cc746e0fa8c0de9b22275f53815b77130cb19a10"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.19/csusage-csusage-v0.4.19-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ceff2db7d4c009a35040a09752fcbd5826e41717db8d98daf23f0a410c05d368"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.19/csusage-csusage-v0.4.19-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e8e2c6f551f405a4674b7085d94dd012b188dc99ba7c988cce94de5b68e6d4f7"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
