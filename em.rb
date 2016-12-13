class Em < Formula
  desc "An interpreted, dynamically typed language written in Java"
  homepage "https://github.com/aeewhite/Em"
  url "https://github.com/aeewhite/Em/archive/1.2.0.tar.gz"
  head "https://github.com/aeewhite/Em.git"
  sha256 "2adeff4afb1a682558a202c7c638e1e019440914d664ec17bc2c2e5b47435e13"

  depends_on java: '>=8'

  def install
    system "make", "dist"
    bin.install "dist/emi"
  end

  test do
    system "#{bin}/emi -h"
  end
end
