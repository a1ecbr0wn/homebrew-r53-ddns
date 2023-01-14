# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class R53Ddns < Formula
  url "https://github.com/a1ecbr0wn/r53-ddns/archive/refs/tags/v0.1.6.tar.gz"
  version "v0.1.6"
  sha256 "c4d231be5ddfaa2fc56a87c63cc5051a52c813c1378559744a2cf937f0d37c41"
  desc "Amazon Route 53 DDNS - `r53-ddns` - a way to keep a consistant url for a network where the external ip address may change via Amazon Route 53."
  homepage "http://r53-ddns.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  