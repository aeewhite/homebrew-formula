class Scam < Formula
  desc "A nifty little language that looks a lot like Scheme, but is so much more"
  homepage "http://beastie.cs.ua.edu/scam/"
  url "http://beastie.cs.ua.edu/scam/scam-2.2a-OSX_64.tgz"
  version "2.2a"
  sha256 "3a41ace22f7c8f9fe01b8e1c24e5ae8ca9641a766b83f714abe8f01e69c6937d"
  
  depends_on "readline"

  def install
    bin.install "scam"
    system "mkdir -p /Users/"+ENV['USER']+"/scam"
    system "cp * /Users/"+ENV['USER']+"/scam"
  end

  test do
    system "scam"
  end
end
