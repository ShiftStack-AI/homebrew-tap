class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.13/stk_darwin_amd64"
      sha256 "3be26f66913210240a02d028a18f9ff272f2adf63e11f0956fb3d7e7968004cb"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.13/stk_darwin_arm64"
      sha256 "451b235055cc09a110b28afcb7ffbf013ce27c168835e47f8f4756190a5aa88e"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.13/stk_linux_amd64"
      sha256 "92e5f2f3df32dd12a861eeadc882193a3ca89c943adb6dfbbc9cbfd8ea07546e"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.13/stk_linux_arm64"
      sha256 "0d33ec57f6d1307bf807d5ad6c1f79c1cfe2f59954b76e391151b20d22e697b6"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
