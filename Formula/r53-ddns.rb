# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class R53Ddns < Formula
  url "https://github.com/a1ecbr0wn/r53-ddns/archive/refs/tags/v1.0.11.tar.gz"
  version "v1.0.11"
  sha256 "e55154ea7c73d9cefbfe78992f184fdc26b018125afd3ca9ecbfaef75277395e"
  desc "Amazon Route 53 DDNS - `r53-ddns` - a way to keep a consistant url for a network where the external ip address may change via Amazon Route 53."
  homepage "http://r53-ddns.noser.net/"
  license "Apache 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end
  