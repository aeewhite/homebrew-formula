class Em < Formula
  desc "An interpreted, dynamically typed language written in Java"
  homepage "https://github.com/aeewhite/Em"
  url "https://github.com/aeewhite/Em/archive/1.2.1.tar.gz"
  head "https://github.com/aeewhite/Em.git"
  sha256 "de0e7ce331f796809830c435113f542d203421297c575a5efcd294857f5ee364"

  depends_on java: '>=8'

  def install
    system "make", "dist"
    bin.install "dist/emi"
  end

  test do
    system "#{bin}/emi -h"
  end
end
