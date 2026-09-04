class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.48.0-17-g8b02b95"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.48.0-17-g8b02b95/stk_darwin_amd64"
      sha256 "91a788765948fed9525c16c3463765e508e7360a0e964e16092a355d620a0182"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.48.0-17-g8b02b95/stk_darwin_arm64"
      sha256 "313c7a86fb4943e24db0a1b332fb59fb588f205a1ac0d06ab3a0cf19449572b5"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.48.0-17-g8b02b95/stk_linux_amd64"
      sha256 "2c56d339fa573c5d180e449c6a0ee07a96840c7a4bb2de0be44ded14c66f1d3f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.48.0-17-g8b02b95/stk_linux_arm64"
      sha256 "b15edff00a14f2e9e55847381703f91bda89e088028e4964b0977b00121fde96"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
