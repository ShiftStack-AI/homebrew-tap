class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.28.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.3/stk_darwin_amd64"
      sha256 "1566e2af184bb206d20627b29c3488f9bf5f6b598c557976bbdebd0ea219cf61"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.3/stk_darwin_arm64"
      sha256 "47f685064d2e50a80771eeb75450561867688ad3ad0d1f896b828ec67ce35090"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.3/stk_linux_amd64"
      sha256 "30fd7736db6c13e72cb6f58c292ab7337bc87e8a6650d92b4103c3c36d6f0190"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.3/stk_linux_arm64"
      sha256 "fbefc527cefad83c241ccfcdbe1a85030aae2a9a93ef2d55ca2687273a60f3ac"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
