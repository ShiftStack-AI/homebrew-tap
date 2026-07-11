class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.33.0/stk_darwin_amd64"
      sha256 "d7bccb7953d3edb6bbee3b29ac905cf8b24762e733d12192c1328d7ed840135a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.33.0/stk_darwin_arm64"
      sha256 "e1d97d3f44914ac0c75b06e7696b761795df0c1f35310f2035849cda97cef895"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.33.0/stk_linux_amd64"
      sha256 "944cd4b839bcc6966fd1352b38cd740085eb481d1e2940804cc12ab7dc96cbaa"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.33.0/stk_linux_arm64"
      sha256 "106859728d24fae0d0e152cd50ba2e0ff1ecbf4ab488ac6f79eceb1795c234af"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
