# Homebrew formula for jmapcli — Boogie's JMAP command-line client.
# Binary-only (closed source); the signed, notarised binary is hosted on
# boogie.digital. Install:
#   brew tap jasonhollis/boogie
#   brew install jmapcli
class Jmapcli < Formula
  desc "JMAP email + calendar client for the command line (by Boogie)"
  homepage "https://boogie.digital/cli/"
  url "https://boogie.digital/cli/jmapcli-1.4.0.tar.gz"
  sha256 "66befe4b0dd2c4b690142ba543e43d75ea7655461259e7d1f170de25d4768a09"
  license :cannot_represent # proprietary, binary-only

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jmapcli"
  end

  test do
    assert_match "1.4.0", shell_output("#{bin}/jmapcli --version")
  end
end
