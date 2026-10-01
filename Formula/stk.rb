class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.3/stk_darwin_amd64"
      sha256 "19217f846c9fc73b0e3139b825d4ff7522b508193b59b8185777e8612d0d88a6"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.3/stk_darwin_arm64"
      sha256 "69e56db4a398058cf2387d7b3beb757039a16c74c8ef7c6bb092f2746383fc56"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.3/stk_linux_amd64"
      sha256 "6e2f45fc27bd2f9ae1e462b2106b169271d426bcdda085e6f53be0b6af5a6abc"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.3/stk_linux_arm64"
      sha256 "60ec9ec36252c6e38abbc6c8c9619b3096c471592206af94541948b1f05d9084"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
