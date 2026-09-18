class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.0/stk_darwin_amd64"
      sha256 "89dfd94ee344b0dd8a8ec90e427e0f2a03c2425ec5e879d7398e8c3ffe51ec34"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.0/stk_darwin_arm64"
      sha256 "aa5cd33bbdc19b0f0450b1d6b3aa3fdd6b019808bda967e9cbf8a8fd52dbe4ba"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.0/stk_linux_amd64"
      sha256 "06e0fecfe819a11472f0848df5c417a31e4bf7f68158ef2ab1281569e58064b4"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.0/stk_linux_arm64"
      sha256 "5d8ae49cb3c717a2fa2cadada3b81c29bf4629b8e693a2ad6b877f65226ccc9d"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
