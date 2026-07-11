class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.38.0/stk_darwin_amd64"
      sha256 "20e9eb4d95be960e02bb11566a944f709e005fe6070e36144d4d52c5c5bdd177"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.38.0/stk_darwin_arm64"
      sha256 "e0cc0fa48ae4372cfc9c62e2385a4f275ccff7d295e3f799765f4227a6acf600"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.38.0/stk_linux_amd64"
      sha256 "6a71c969885a0c9fd50b5aaeb09a28704c689d929425c33e224a6646a4fe3891"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.38.0/stk_linux_arm64"
      sha256 "c967610ef435c841b3949a24ed614a5828100bb4744d119daf523570136f88f6"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
