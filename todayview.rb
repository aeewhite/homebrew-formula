class Todayview < Formula
  desc "View the days events from OS X System Calendar"
  homepage "https://github.com/aeewhite/todayview"
  url "https://github.com/aeewhite/todayview/archive/0.4.tar.gz"
  sha256 "7b1a9d03bb06d433c0a1cbb9f20244add520f6960f6ea5490dbb852ebb7ada9a"
  head "https://github.com/aeewhite/todayview.git"

  depends_on :xcode => :build

  def install
    system "make", "-s"
    bin.install "todayview"
  end

  test do
    system "#{bin}/todayview", "-h"
  end
end
