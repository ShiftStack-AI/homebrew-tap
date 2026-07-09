class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.15.0/stk_darwin_amd64"
      sha256 "720988d8c0262d4ff9ba6c284eceba5dee57b5e7c64c2ae950a584182f70b0b9"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.15.0/stk_darwin_arm64"
      sha256 "030d05c3f8ef4aaa032097f31c4aa39ff04484e790586532b29f77175889ce8a"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.15.0/stk_linux_amd64"
      sha256 "9f65c688328e8fbb28dd2b6c289fa56089c6d157635fe5a7b3c6dc3fc6b106a7"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.15.0/stk_linux_arm64"
      sha256 "a8ac47422e94cbbe01cd797a7fbef02b03805dd77401aab261d468a190163ec5"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
