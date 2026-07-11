class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.39.0/stk_darwin_amd64"
      sha256 "39e66477eb79690800d9e364280b16946b9aa78c6f7945117af7b2656e608115"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.39.0/stk_darwin_arm64"
      sha256 "12aa55c2d03713bbc129fbabb5a9046d5d0b75a2738ddefae47b8af7ce978af9"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.39.0/stk_linux_amd64"
      sha256 "ef75191a697274560f3f64ac44c778a7c0d15aa1bbb520603a4e44e2ab358003"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.39.0/stk_linux_arm64"
      sha256 "1f3d9bfb2414338598b53e98fc30b7e8c0aa4fd192264cafa6fefc91f09c7b89"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
