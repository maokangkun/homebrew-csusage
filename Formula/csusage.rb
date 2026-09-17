class Csusage < Formula
  desc "Coding agent CLI usage reports (ccusage fork with Claude Science support)"
  homepage "https://github.com/maokangkun/ccusage"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.1/csusage-csusage-v0.4.1-x86_64-apple-darwin.tar.gz"
    sha256 "7a3d74c73ef01bf8761450b6d5e7c8427d356065348bebe91c496f5da9105d4d"
    else
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.1/csusage-csusage-v0.4.1-aarch64-apple-darwin.tar.gz"
    sha256 "012e552c60f8eebc28cc7bd153e74fef8e841f62b3b86a1c91070beb2f4cc7c1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.1/csusage-csusage-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b8a211f5a8479329fe452db8f9c4bcfa4e0ae0f9fd4bd96a20305f7fce22de72"
    elsif Hardware::CPU.arm?
      url "https://github.com/maokangkun/ccusage/releases/download/csusage-v0.4.1/csusage-csusage-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "7e39a8a5cbd339b32c52f9bdd06ce4c4541af5a684d90062dcaab96663624593"
    end
  end

  def install
    bin.install "csusage"
  end

  test do
    assert_match "csusage", shell_output("#{bin}/csusage --version")
  end
end
