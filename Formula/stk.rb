class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.16.0/stk_darwin_amd64"
      sha256 "74bc5dca674b7f51d745ff8fa19bfd485ff772d5c7519182e28e76d3a2c644ac"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.16.0/stk_darwin_arm64"
      sha256 "56fb448b1822a86c620823041856b67a4ae535b287c8f07009c835e1dff2b1d7"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.16.0/stk_linux_amd64"
      sha256 "0ebdf893eab27469499061e70e9951c4c5e830992002c17f92ad42e2ba4898e6"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.16.0/stk_linux_arm64"
      sha256 "d760eecc99a7b72be69dae8ed4be09dfdb5558e45279c20293fe75611d51d366"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
