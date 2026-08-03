class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.43.0/stk_darwin_amd64"
      sha256 "40369986d614128bd09e4b6bef8914c64c287b6e6ef422b22fb072a0d134d1fd"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.43.0/stk_darwin_arm64"
      sha256 "07661937c53354739b220e5d114474ff001435a491a8fe32c89d6f3ecf9713ed"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.43.0/stk_linux_amd64"
      sha256 "9cce5128dca9a0905585e83f68f9785625cb552aa2322da86ab4b0a15bc1e43c"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.43.0/stk_linux_arm64"
      sha256 "183118b2dcdfe5cffe79fd8378567fb3bdafa5068409ab2df0f3de8e703e4252"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
