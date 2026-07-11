class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.34.0/stk_darwin_amd64"
      sha256 "335c5da8b18440e0d2e5c37660b4fcedd5d2802a595d292990cf40b8e1b8024f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.34.0/stk_darwin_arm64"
      sha256 "21b16b420adb73efc4fd1d5ccc9685cfa8c4f76feb24694305083c73ea3ee0b9"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.34.0/stk_linux_amd64"
      sha256 "384e99ba1638cebbe2327cb959076ef51390500a992304df46f9087788e94264"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.34.0/stk_linux_arm64"
      sha256 "1607ebe2adb8b801da571781246992201fb5c1d656f4e12d7d1b534405dd9d72"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
