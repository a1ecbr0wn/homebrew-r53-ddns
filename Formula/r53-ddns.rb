# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class R53Ddns < Formula
  url "https://github.com/a1ecbr0wn/r53-ddns/archive/refs/tags/v1.1.2.tar.gz"
  version "v1.1.2"
  sha256 "52919db48729f142382d9c92a3895754a57ce893a468651a31d03898cb6083ef"
  desc "Amazon Route 53 DDNS - `r53-ddns` - a way to keep a consistant url for a network where the external ip address may change via Amazon Route 53."
  homepage "http://r53-ddns.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
