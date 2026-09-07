class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.49.0/stk_darwin_amd64"
      sha256 "d42939a2d99753e0d92f3e0ae56e7c12908b42e1a1dd8b70d892d677820cc3e9"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.49.0/stk_darwin_arm64"
      sha256 "fdb4d0fe0012662ccf0d57ac53846a78de59c73952a3439b6015d4d6908029f3"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.49.0/stk_linux_amd64"
      sha256 "d99af72ab587a4ab7eb374cb85b1b44e3182ae545ecd930199dd9f7b80c10251"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.49.0/stk_linux_arm64"
      sha256 "d69380e71c4d1938c422835895e638a71d3c0716ca240292df88d2c07475f863"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
