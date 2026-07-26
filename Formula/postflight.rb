class Postflight < Formula
  desc "Run GitHub CI on warm, isolated infrastructure"
  homepage "https://guardianintelligence.org/postflight"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/guardian-intelligence/guardian/releases/download/postflight-cli%2Fv0.2.0/postflight-aarch64-apple-darwin"
      sha256 "a2eb2233d14254e7391253ad0825e9dad3bd57e29517411e743e23021e34dcac"
    end
    on_intel do
      url "https://github.com/guardian-intelligence/guardian/releases/download/postflight-cli%2Fv0.2.0/postflight-x86_64-apple-darwin"
      sha256 "da34b93276edd4d49d8a65a377902f82ea7183202136a84e379bb1026aee3105"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/guardian-intelligence/guardian/releases/download/postflight-cli%2Fv0.2.0/postflight-aarch64-unknown-linux-musl"
      sha256 "2fc615c9ffba3849d8ac30adbd8b7c5b450dae9900659b4278b11da08458e353"
    end
    on_intel do
      url "https://github.com/guardian-intelligence/guardian/releases/download/postflight-cli%2Fv0.2.0/postflight-x86_64-unknown-linux-musl"
      sha256 "a3d84425ad24043a1b924fad1180f38cc43afc3965991e45dea9f3478333b81c"
    end
  end

  def install
    bin.install Dir["postflight-*"].first => "postflight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/postflight version")
  end
end
