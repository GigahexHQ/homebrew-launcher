class Launcher < Formula
  desc "Define and launch data pipelines on cloud"
  homepage "https://launcher.gigahex.com"
  url "https://github.com/GigahexHQ/launcher/releases/download/v0.1.0/launcher-tool-0.1.0.tar.gz"
  sha256 "7fcf2ea9f76b4ffaa7f2ac5f19789b999999819c4934f7353b082c3ff47cac6b"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    rm Dir["bin/*.{bat,cmd,dll,exe}"]
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/launch", "-v"
  end
end
