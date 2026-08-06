class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.6/stk_darwin_amd64"
      sha256 "e0cebb954b559e600b338225e6ccb0301d6f38316f653ed04f692e21dcaa2b16"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.6/stk_darwin_arm64"
      sha256 "1bfa931148ddb8bfb3bc9773053da40631cea24feaa4ecb7007dc577c484ad47"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.6/stk_linux_amd64"
      sha256 "f9088b8e14b54154d505aab702a713b798c59329a3d6ec82f404c24d459e2ee9"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.6/stk_linux_arm64"
      sha256 "3085067e3d5b06e3234fd5e408f7707b2c0d6fbfaf35fc28f3128791f9b16f74"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
