class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.35.0/stk_darwin_amd64"
      sha256 "661feb5bf32881b7d6ab1611333d77dfb861dc510eb294bc032b65df761cae57"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.35.0/stk_darwin_arm64"
      sha256 "68b5d5c529407a820604087c8e3060725da47947e64cb43f7e4b14d61d49e446"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.35.0/stk_linux_amd64"
      sha256 "d3433ff951c737a3c1bcb86dc114a953705367760e143e63d063abdcaf04317b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.35.0/stk_linux_arm64"
      sha256 "2b806d594e70cc59b343e1ed13305683d4bc5c1c64e0c0f59fd22b6915b810ee"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
