class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.2.0/stk_darwin_amd64"
      sha256 "c990ae75ec8f681d1e3f5426f6f782fe9811012250034a687f6499de9fe435b1"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.2.0/stk_darwin_arm64"
      sha256 "9ceadc1fa8ea06f227a573f7ed2631c2e87ae9fceead50eb878bf95152b7473c"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.2.0/stk_linux_amd64"
      sha256 "bc6f1032bc92c99e08fdcd6804f17ef17823292c36da0717c60feb274973b787"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.2.0/stk_linux_arm64"
      sha256 "3b585af09e1d2e13e0c260e259f617a5b54312d4056b33d042b595951c8eb0bd"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
