# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class R53ddns < Formula
  url "https://github.com/a1ecbr0wn/r53-ddns/archive/refs/tags/v0.1.4.tar.gz"
  version "v0.1.4"
  sha256 "5af4317e06f38fa90d6201dd8e37830e92a7fa5bd7d4d6362a7c1bc88e1f843a"
  desc "Amazon Route 53 DDNS - `r53-ddns` - a way to keep a consistant url for a network where the external ip address may change via Amazon Route 53."
  homepage "http://r53-ddns.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  