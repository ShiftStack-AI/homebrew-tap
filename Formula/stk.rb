class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.47.0/stk_darwin_amd64"
      sha256 "75efc4178861242995bc104655f19e43b6aa9c2c8325318f2b9d1efcc24b4f75"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.47.0/stk_darwin_arm64"
      sha256 "6900b2ba831e25975684bcfd671571cce2b7a5fa9eadbbc4baa7838fb9391653"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.47.0/stk_linux_amd64"
      sha256 "cb72eaa8eb030ec641859e3e46f63d86676d0821fac6e252f52941592676eeb8"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.47.0/stk_linux_arm64"
      sha256 "16e858db591cdf63a5562ee4048085982f0b9cea96e9e6b6386f0627d3ecdf50"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
