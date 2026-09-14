class Csusage < Formula
  desc "Token usage reports for Claude Science"
  homepage "https://github.com/maokangkun/csusage"
  url "https://static.crates.io/crates/csusage/csusage-0.1.1.crate"
  sha256 "4d625bc4c5f6813c06c7da6ee08dc0d2857343f6e20d3dbc7f75d097177ab534"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csusage --version")
  end
end
