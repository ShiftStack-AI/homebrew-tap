class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.13.0/stk_darwin_amd64"
      sha256 "a28305c720026689c8ac4ac4f04106d614e8306b258cf1ed643fb4eaf4eca0f0"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.13.0/stk_darwin_arm64"
      sha256 "aefaa8d5d6bea90593c8ffbc3960aa113a44a4d59dcc2ca5b02bcc9afa7a6d39"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.13.0/stk_linux_amd64"
      sha256 "a8823f02574d78929ced170a46f9a2fb06416bf07ed960ffd3a6d9ab6636ecac"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.13.0/stk_linux_arm64"
      sha256 "24092d53fbce702d0b5228b5295875ab5dde1c19aa5d6007d7ba2f548455123a"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
