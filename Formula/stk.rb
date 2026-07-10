class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.22.0/stk_darwin_amd64"
      sha256 "eb93fc6bcacd696959d0d568e82b4cdd7ed01956aedea4a1718070f1ce2ae0b3"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.22.0/stk_darwin_arm64"
      sha256 "12b0a9b9870009e515997a919195cf8adf1c8ee42c8442649d8963540d8a06f5"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.22.0/stk_linux_amd64"
      sha256 "a0d94fcc8a9b13d203f8a68142ca958d58dc788c4afe5a7dc492cdf397e88df6"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.22.0/stk_linux_arm64"
      sha256 "39bce9330d3bbf3789a90916722eee08b848c48f089250d432a31da28281d758"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
