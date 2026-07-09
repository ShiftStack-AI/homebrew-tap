class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.19.0/stk_darwin_amd64"
      sha256 "46b59eaf2df299ddfdabbcad26117d0760656fe6f08171363382bf75bf3064cc"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.19.0/stk_darwin_arm64"
      sha256 "4db850ed276ffce248df3fc5f070a694aa34de31d1d0083434ce4d0e0d6fc2ce"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.19.0/stk_linux_amd64"
      sha256 "d4a2102d580117bb8e0495b0a2b8f1bd776ca038977126ce3d41e6f9c8bbd496"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.19.0/stk_linux_arm64"
      sha256 "904f2863bbf4389fc2c0f3b9b66b4ae6f1d8a8e21cb065548b73ceec62c55def"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
