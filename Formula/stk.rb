class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.18.0/stk_darwin_amd64"
      sha256 "99975edf9b2932252a015fede20d250aa65a2165b57031dbc2ff3e3ddeb9d10a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.18.0/stk_darwin_arm64"
      sha256 "0cdc07171ddd325838a4aa6a0978c68326349c36d06483892f66157d2aeda5a0"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.18.0/stk_linux_amd64"
      sha256 "707dd3863f93cf73b0382a5664f845faf6bc2c64a05f0a763fa2b37e107eea9a"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.18.0/stk_linux_arm64"
      sha256 "8980038ddc9fc8e335719f5275d74ef0eda47b6665374d3feff4b916d878d362"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
