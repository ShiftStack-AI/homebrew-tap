class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.40.0/stk_darwin_amd64"
      sha256 "ab6b8d08e74ea1ca864e7b5422d9e3794eb85f3f847e848101b2380ff9c5e25a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.40.0/stk_darwin_arm64"
      sha256 "ebfa9a5c34823e982b30ee1db24938245cef171ed51a0503789278ed43fbaacf"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.40.0/stk_linux_amd64"
      sha256 "3a977cc186f2dcf834695254f6ec57c0c16825cb368a4d59bf7bf8ffc26f5d6b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.40.0/stk_linux_arm64"
      sha256 "0c482a99b274b16388ece636f5410f0c7fbedddd3391b4ad131f832c5b3218a7"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
