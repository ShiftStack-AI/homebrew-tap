class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.9/stk_darwin_amd64"
      sha256 "6b21a3a62a389eb7a2df68d3f1111151e5cf4dfc7d7ad083cec98b747e934041"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.9/stk_darwin_arm64"
      sha256 "0ded06ade3a4a79fe3d99906821119c6984e063f61dd574781be6a2b5ff9a578"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.9/stk_linux_amd64"
      sha256 "dda21238e578b1fe849bbefb1b40609e72c80f73794c97c5187c0417c6ff8635"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.9/stk_linux_arm64"
      sha256 "84aa3eef648ef331619ae94d36852d4db7a0c746a1b841a705704e3dc895643f"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
