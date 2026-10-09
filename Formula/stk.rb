class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.8/stk_darwin_amd64"
      sha256 "b0c0fca26e1fd7ab8ed017bbd16ff870a7fa6b8b43aef371403f1e03f6867826"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.8/stk_darwin_arm64"
      sha256 "37338da029fa0749bdf1591291bfd89ff16372d8a9069797772c07c682a26ffd"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.8/stk_linux_amd64"
      sha256 "94c1bdbbb513cd79282ae2466d724894e2a5284e0beac6ed5691a455abe9b4d1"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.8/stk_linux_arm64"
      sha256 "4abe386da0827043fae761c93269751befa55810c2146c9bd7f92c011f542e9e"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
