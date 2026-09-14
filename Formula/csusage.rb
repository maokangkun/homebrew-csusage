class Csusage < Formula
  desc "Token usage reports for Claude Science"
  homepage "https://github.com/maokangkun/csusage"
  url "https://static.crates.io/crates/csusage/csusage-0.1.0.crate"
  sha256 "f6fff242a64ff325e62a5d1caef4e718e4595b3caa4e0db0581e17317ab03a9f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/csusage --version")
  end
end
