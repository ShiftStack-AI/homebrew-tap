class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.46.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.3/stk_darwin_amd64"
      sha256 "24db99e1e673cc2ae4e9142070ee87de9a4c436c4faef95962f371713e3be557"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.3/stk_darwin_arm64"
      sha256 "aaae0b93beee33cb64ab53730748582c6ea847966744e74df447bb03d789617e"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.46.3/stk_linux_amd64"
      sha256 "f508a470c8aed6de6900d6c93635bdd11bf6773d57ca98e1ff10cec277350fa6"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.46.3/stk_linux_arm64"
      sha256 "3f6a8999faf89646e30049658bfa42befbdc63d566c32608cbe9d2c09e9746b4"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
