class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.12.0/stk_darwin_amd64"
      sha256 "afb9db0136b34f7ddde6ac4d4f7608f0b3fc3c3420bb992aaee975cb6b1b9707"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.12.0/stk_darwin_arm64"
      sha256 "39715b13b034e304915041d01c78fac3fc0780a42bcedc55bb3b160704ad214d"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.12.0/stk_linux_amd64"
      sha256 "361cd2f4aa4985ea1aa04b6ef727509f36e99a7c7d8e3ccac7e77a432dd364ff"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.12.0/stk_linux_arm64"
      sha256 "bfa03b1d4137b699750fbf8ae61022702e681a13df2f0e961c05d7d67476c586"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
