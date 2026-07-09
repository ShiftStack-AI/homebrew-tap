class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.17.0/stk_darwin_amd64"
      sha256 "319c01b3d12bd2515be060c155e52a59f750a6ddc32bba312280f5bfb7a7b7c6"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.17.0/stk_darwin_arm64"
      sha256 "a873fb4a6c783ad88216be9ef5790ddcbf878a2f81d8b00e83b820ab5e407cbd"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.17.0/stk_linux_amd64"
      sha256 "9aab46361b660f19abe5cf277f83a09a7180f164e5c05864a7ad036dc0dd4f97"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.17.0/stk_linux_arm64"
      sha256 "1a1b7c83b52e4b627ab5051a99668623f69593355371e63a1cff7070ad8ac1ee"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
