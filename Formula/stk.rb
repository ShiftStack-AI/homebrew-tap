class Stk < Formula
  desc "ShiftStack CLI — wire up Claude Code with ShiftStack"
  homepage "https://shiftstack.ai"
  version "0.50.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.11/stk_darwin_amd64"
      sha256 "1b404349d65eaf5ae9eaff708cecb12d344d3fff2c1682789fcdcf759b10afbc"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.11/stk_darwin_arm64"
      sha256 "75b4d8c338583e4b541aca22b7147432af97f893a0654b5822b7fac5cdfaa125"
    end
  end

  on_linux do
    on_intel do
      url "https://shiftstack.ai/dl/stk/v0.50.11/stk_linux_amd64"
      sha256 "6edd004b26628e331f647b795d163d829b1e575aaab61b54720928752ea7e751"
    end
    on_arm do
      url "https://shiftstack.ai/dl/stk/v0.50.11/stk_linux_arm64"
      sha256 "4413fb4c559b7a4337ddaa9caf7ae0d400bffa8dc9323c3c4df906366dd90073"
    end
  end

  def install
    bin.install Dir["stk_*"].first || Dir["dl.*"].first || Dir["*"].reject { |f| File.directory?(f) }.first => "stk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stk version")
  end
end
