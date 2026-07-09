class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.5.0/stk_darwin_amd64"
      sha256 "b21d1ca24c985d658f85f76144b7456a37e1c1600453666cf3f2a9619bf9c15d"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.5.0/stk_darwin_arm64"
      sha256 "851c4b66a8fd1c841846a2e9c3ab070938b0fbcfe2bc040a836021215a350619"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.5.0/stk_linux_amd64"
      sha256 "caebf469ed7c5c498f737b635f876fea73133d822096f336fd32923d847f6037"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.5.0/stk_linux_arm64"
      sha256 "8dd66231a66b405bc7943089b9ed6660706221478d2e8be0e8089566e0f25b3b"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
