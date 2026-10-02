class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.5/stk_darwin_amd64"
      sha256 "64a87042a141160049b367bbede8dd314d0b77bdfa75f968fbccdfcc2fdfa4c9"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.5/stk_darwin_arm64"
      sha256 "b613c26a0f6095690dc2d8970d7759e1c087f8c5476e9bb0b41d3b21cf1bf628"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.5/stk_linux_amd64"
      sha256 "d6296040ab43718dcbf370732a966ee925e73e335406576bdd5b74e37f3b9e9f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.5/stk_linux_arm64"
      sha256 "1ab8dea16b167abdf00cab613cb16a92c5a773dc24e3cbc9799f2e5c06348400"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
