class Todayview < Formula
  desc "View the days events from OS X System Calendar"
  homepage "https://github.com/aeewhite/todayview"
  url "https://github.com/aeewhite/todayview/archive/0.4.tar.gz"
  sha256 "f85fc234ccc8b59e075e4e94d00af88814cd31327f7948dd268fecf659f73438"
  head "https://github.com/aeewhite/todayview.git"

  depends_on :xcode => :build

  def install
    system "make"
    bin.install "todayview"
  end

  test do
    system "#{bin}/todayview", "-h"
  end
end
