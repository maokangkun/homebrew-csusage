class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.0/csusage-csusage-v0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "c17b6c73954c85a3f68ce38648c6bbe8246efdc7b47d7463a22b84aabc250bca"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.0/csusage-csusage-v0.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "97ba25142567430b2e2fd05b96f65b2df518cad9054119a5d96d8ad0217ca6f0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.0/csusage-csusage-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "73681ad3e505319e56551976d847a8a38598c426b1142db2983051a69e4feab9"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.0/csusage-csusage-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ffbb0e1ff0ca8b831477fef9440cbb3f19ad06f3379b6bce9e71c4db671e317e"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
