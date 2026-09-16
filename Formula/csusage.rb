class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.3.0/csusage-csusage-v0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "868568cf5428500182850454482de2e4fab092ad5248d3011ef80fd7c419af41"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.3.0/csusage-csusage-v0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "790bed8aef7049852d46446c19f56ac7ff0d1537defb463063e86b5e6fe9077d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.3.0/csusage-csusage-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "51098f261bac05f5c83aafc3ccbcc764153b5cba4cfcc656f5bebaa50c50190e"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.3.0/csusage-csusage-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "411810c8525f915292dc39faad4375dbd92f58b4f8c5c61ebd8206ab0d5a5d2c"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
