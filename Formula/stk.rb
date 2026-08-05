class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.0/stk_darwin_amd64"
      sha256 "57988d836cd7ac045892bf603c9d254e05d670b742e406e2db3a5a0d43fdde72"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.0/stk_darwin_arm64"
      sha256 "74e8e0caa81a3065029db0514f83190124aea2b403945445d73c3134f80e08a1"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.0/stk_linux_amd64"
      sha256 "1da6ed4d4c1b9523670c46bce23e8d9abc4ec2983ebd2a9d7ffc08fdd45c2f8c"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.0/stk_linux_arm64"
      sha256 "2b334d225dfc0a84afc03dcb86bc5126d4552fdc18d39de7b495f25e887572fd"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
