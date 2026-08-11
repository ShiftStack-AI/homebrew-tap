class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.7-6-g5b3097c-dirty"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.7-6-g5b3097c-dirty/stk_darwin_amd64"
      sha256 "1771a323c64745e26ba8dc47ab5548682ed623c5b6caa50041819154971ecd95"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.7-6-g5b3097c-dirty/stk_darwin_arm64"
      sha256 "d3f360faf835e8655d93d6a8fd645094eda2dd2946434177a7fab1c8d7e8a779"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.7-6-g5b3097c-dirty/stk_linux_amd64"
      sha256 "26baf559f5befb76966918533f44d261e3f3062386fb65e0f8b7b39fa15cf3b0"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.7-6-g5b3097c-dirty/stk_linux_arm64"
      sha256 "1b59b03465f91b5e70db058f4469f7940ce9698aaa4e3ab2c698c96dfccc786b"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
