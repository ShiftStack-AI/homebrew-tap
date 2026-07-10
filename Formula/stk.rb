class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.0/stk_darwin_amd64"
      sha256 "c9e1a19e391d93bfdd370635c6d99b71306ead629c702f3105bbf9b9d6280183"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.0/stk_darwin_arm64"
      sha256 "5eeb5f7618be1f1be4b351a69e56330672533d3e46f7d097a07fd7207334c10d"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.28.0/stk_linux_amd64"
      sha256 "bce31d2bf8cb53e8ec2c94f57026f816c76c35b65d7e260b8615d39d6deb5587"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.28.0/stk_linux_arm64"
      sha256 "f82b0434e602e73ebf7c7badd4c143de1f4a61a4e57b6550eea28f38505c6387"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
