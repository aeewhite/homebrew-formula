class Todayfile < Formula
  desc "Create a file using today's date"
  homepage "https://github.com/aeewhite/todayfile"
  url "https://github.com/aeewhite/todayfile/archive/1.1.tar.gz"
  sha256 "8c87512abeb8688c3e79c2c270106a7af9765970cb6cef73f05f1e121be68e99"

  def install
    system "make"
    bin.install "todayfile"
  end

  test do
    system "todayfile"
  end
end
