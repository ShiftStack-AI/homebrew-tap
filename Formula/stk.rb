class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.7/stk_darwin_amd64"
      sha256 "34e7574e7db8c0ac5de6de08265137129bbe3ee042883fdab5e31a05c66b4f0f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.7/stk_darwin_arm64"
      sha256 "b53f313f7b13ab49199440a9dcafdac6a98f4ad8dc03ad4155fd0d67c96f38a4"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.7/stk_linux_amd64"
      sha256 "f31c42b3652269e273ecc86e561ceae1a81297e7206640fd2f4831a5acc02588"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.7/stk_linux_arm64"
      sha256 "4024076b734dcefcad0542278fe8084050c13efd8a7c031398c7dca6bc92306a"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
