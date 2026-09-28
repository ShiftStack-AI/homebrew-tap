class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.1/stk_darwin_amd64"
      sha256 "69b2d1310a86b9d81092e9ed0d6aee9a59731681db0e18ddb5176f1ef565d186"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.1/stk_darwin_arm64"
      sha256 "e73b8d1e92c97338c2816187e56c0572742836b81566e927a9803de527550765"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.1/stk_linux_amd64"
      sha256 "c20d04741595ed413a4439b37b41d37a1ca83581a923034c911737b63f0aa946"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.1/stk_linux_arm64"
      sha256 "0ec78ea888f0a96d665ba7ce6b2b24a18729ea7eb18ca1b3972d81a297fe17f0"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
