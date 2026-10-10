class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.10/stk_darwin_amd64"
      sha256 "11fba76fe5c9bb71662b307709d1c5284e1d2dcdd0a26fbbf329aa2a30adbe83"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.10/stk_darwin_arm64"
      sha256 "8e1f8bd7e3596c0b050ceb7dcaf2147a778f7d0c0a18f05802675c729c5f2776"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.10/stk_linux_amd64"
      sha256 "183aefe8b67cf0e01539aee7ec9961d1b3ff812860aebef073e4dd81ada4189c"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.10/stk_linux_arm64"
      sha256 "5401062c85cc4446de8b4b0158a878c1ca2c3907dc374b1006cb39aa755d758d"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
