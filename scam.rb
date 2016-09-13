class Scam < Formula
  desc "A nifty little language that looks a lot like Scheme, but is so much more"
  homepage "http://beastie.cs.ua.edu/scam/"
  url "http://beastie.cs.ua.edu/scam/scam-2.2d-OSX_64.tgz"
  version "2.2d"
  sha256 "ccbe186ae137113a1c411c866f5188bb2d8e3a6c7d449f825fcca573be94c5ed"
  
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
