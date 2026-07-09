class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.9.1/stk_darwin_amd64"
      sha256 "2bf6c96e4365624bf47da2335357d5e865803c521f190d00b7b81f078d733c5d"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.9.1/stk_darwin_arm64"
      sha256 "c4ef0dcbdf411254e783c9ac5b6a66f56c281c4265443c950953c686a50e07f0"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.9.1/stk_linux_amd64"
      sha256 "f31174a22a9d2077e42a44724f48e464de42543d8f9926f8efef3e923e81417f"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.9.1/stk_linux_arm64"
      sha256 "0338c7d9439e0d4d4ccacbdbb383930e6fd5a986fbbf2ff63d8b1575c0de917f"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
