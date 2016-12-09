class Em < Formula
  desc "An interpreted, dynamically typed language written in Java"
  homepage "https://github.com/aeewhite/Em"
  url "https://github.com/aeewhite/Em/archive/1.1.0.tar.gz"
  head "https://github.com/aeewhite/Em.git"
  sha256 "8790587533fcc51eb06261d72b03b9548e861a82d7577ea9a1075fd36697ef56"

  depends_on java: '>=8'

  def install
    system "make", "dist"
    bin.install "dist/emi"
  end

  test do
    system "#{bin}/emi -h"
  end
end
