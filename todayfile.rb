class Todayfile < Formula
  desc "Create a file using today's date"
  homepage "https://github.com/aeewhite/todayfile"
  url "https://github.com/aeewhite/todayfile/archive/1.0.tar.gz"
  sha256 "5ce6eac33b200d2a8a1e146c8aa8bdfb2a99b278f2fd377a93044283745a3ff4"

  def install
    system "make"
    bin.install "todayfile"
  end

  test do
    system "todayfile"
  end
end
