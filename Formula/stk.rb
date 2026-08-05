class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.5/stk_darwin_amd64"
      sha256 "5a9457cefa6859fb832e0557ecc4ee9b00465239e175a9c4bb8681577506f53b"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.5/stk_darwin_arm64"
      sha256 "7fd1e8f660b63924ea796530ce1ab0cb05bc2e732707466f664b7f18208b9b2a"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.5/stk_linux_amd64"
      sha256 "f0b317ea7114bc523306d05025d7da8ee3441b02e13ff46d1f38a7f5b10623a2"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.5/stk_linux_arm64"
      sha256 "c3e469698b572bfe02c142d85b51b33a4283eacf9cdff18912938946e081883c"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
