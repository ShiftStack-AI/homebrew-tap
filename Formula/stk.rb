class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.3.4-dirty"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.4-dirty/stk_darwin_amd64"
      sha256 "ee6adec5298b32b530d44eec9202341c5c6009ba55aa4313c8fff07bfa95d085"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.4-dirty/stk_darwin_arm64"
      sha256 "de87d59523451754e1fc79fc9d5454a234cad098c2de395f2e5eda51bf0539bc"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.4-dirty/stk_linux_amd64"
      sha256 "d78908875acf9a0ff27f7b66dca3eee755d0091d46e4db2207aa9f31abc28d02"
    end
    on_arm do
      url "https://storage.divinefam.org/dl.shiftstack.ai/stk/v0.3.4-dirty/stk_linux_arm64"
      sha256 "59bda9d85569255d8a505483c3953c0723fc738f0b77a40137377162b48da336"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
