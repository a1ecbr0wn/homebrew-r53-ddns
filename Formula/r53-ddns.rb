# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class R53ddns < Formula
  url "https://github.com/a1ecbr0wn/r53-ddns/archive/refs/tags/v0.1.3-test2.tar.gz"
  version "v0.1.3-test2"
  sha256 "91a55f3ba864543425136dc367c2b2c759323920d9ac523bd217b2336a56ed69"
  desc "Amazon Route 53 DDNS - `r53-ddns` - a way to keep a consistant url for a network where the external ip address may change via Amazon Route 53."
  homepage "http://r53-ddns.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  