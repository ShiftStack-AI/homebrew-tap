class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.0/stk_darwin_amd64"
      sha256 "f45cbb45d9b6533d0220b771a9bf54a2652bfee0460b21c8e07eea7396c557f1"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.0/stk_darwin_arm64"
      sha256 "d67b8dbc81e92d6c28f51f189fc562fde37a2b991a8a28a4d2e0109711c77b2b"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.0/stk_linux_amd64"
      sha256 "7411e15fed1cc4b475a2633077ac8e6c3f36366be7174e0ec9dadfdd8db0973d"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.0/stk_linux_arm64"
      sha256 "9bf47d3f7462d330abb44ee24ec1bc46268c27dec9d7b6ba0e180d46268ad0a6"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
