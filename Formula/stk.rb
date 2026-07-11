class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.28.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.2/stk_darwin_amd64"
      sha256 "e87429f1095a678eb1150109fc9c6cc467c3f1bc1c2e7b4372742516ad37e4ba"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.2/stk_darwin_arm64"
      sha256 "ef6f5a90290946af2e08b873a93b06d1bd7659b2c8c5616a3d0c1dee43705168"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.2/stk_linux_amd64"
      sha256 "542b2275b89b500df07c67b1fc5aac8ee3ff823d980b2306396774b9f58ad6d8"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.2/stk_linux_arm64"
      sha256 "9caa6be798a48c390db62903772eae5b7e34b536de6c1c1438cb173f8b01aed6"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
