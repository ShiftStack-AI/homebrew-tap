class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.45.0/stk_darwin_amd64"
      sha256 "2a864c7b6bf2800a45cd97ef7bc31f3bb89f53b38c8062c226bf08bd19c62d14"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.45.0/stk_darwin_arm64"
      sha256 "c8e58f1378a99562f05843030bf29f64de0dab4b17bffd76752254929c913993"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.45.0/stk_linux_amd64"
      sha256 "8f7c1363de004d6371a5b3177a67c9d0ecde300918097fee6c848c3d5012c67e"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.45.0/stk_linux_arm64"
      sha256 "e8c5ad2ada70658b911325801f8eff6df2c2c6d66800e8615200a42151341b0f"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
