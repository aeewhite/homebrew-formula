class Em < Formula
  desc "An interpreted, dynamically typed language written in Java"
  homepage "https://github.com/aeewhite/Em"
  url "https://github.com/aeewhite/Em/archive/1.0.0.tar.gz"
  head "https://github.com/aeewhite/Em.git"
  sha256 "142fbd166c9e5faad352d5d2ca55b1594fed2221abb62c16d1e6fef34e39144c"

  depends_on java: '>=8'

  def install
    system "make", "dist"
    bin.install "dist/emi"
  end

  test do
    system "#{bin}/emi -h"
  end
end
