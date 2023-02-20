# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class R53Ddns < Formula
  url "https://github.com/a1ecbr0wn/r53-ddns/archive/refs/tags/v1.0.2.tar.gz"
  version "v1.0.2"
  sha256 "1262919e71197d9183e3c5d5e60be0528b685daf8aa5f5d5dbacedefc6e1845e"
  desc "Amazon Route 53 DDNS - `r53-ddns` - a way to keep a consistant url for a network where the external ip address may change via Amazon Route 53."
  homepage "http://r53-ddns.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  