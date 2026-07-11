class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.32.0/stk_darwin_amd64"
      sha256 "c93c53c960c6b197d4e41cb87d15e5182e690c0d78ccf8cfa990666e6a702f2e"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.32.0/stk_darwin_arm64"
      sha256 "6e31e745ba49ff21387f1c7ac9e84458ff0bdc9f8e0560734340c0cd4d5e998a"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.32.0/stk_linux_amd64"
      sha256 "2b92ebab3f4bf6c7028cad710c8c3f5347a0e4ff8e3515e4b5e9ae6575770020"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.32.0/stk_linux_arm64"
      sha256 "9e9cbf0e249918c1a47b3be1b9ad7c79add7fbdfce5587b5d9ca3333238ec6bc"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
