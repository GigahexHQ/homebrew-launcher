class Launcher < Formula
  desc "Define and launch data pipelines on cloud"
  homepage "https://launcher.gigahex.com"
  url "https://github.com/GigahexHQ/launcher/releases/download/v0.1.0/launcher-tool-0.1.0.tar.gz"
  sha256 "493a5832362ab3c0d3fa434b360f35884ce56060b7a18072cc1826184f9abd29"

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
