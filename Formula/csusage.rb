class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.3/csusage-csusage-v0.4.3-x86_64-apple-darwin.tar.gz"
    sha256 "94dc63533ae15816f8052321ffc8a5caf8f8e4801a901c27308a514b3d57618c"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.3/csusage-csusage-v0.4.3-aarch64-apple-darwin.tar.gz"
    sha256 "46f0447e456c0505effd151261a200b311de4777b99f67f5b09a931079b27239"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.3/csusage-csusage-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ab028fdbcb68402066f77c3b8a315c660997f354942f9ad476e214cf136926cc"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.3/csusage-csusage-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "9c26b9c45ca26cbc3500558945f2be60ffafb6f3554c0cdf489e797ff8bd0540"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
