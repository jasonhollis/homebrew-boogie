# Homebrew formula for jmapcli — Boogie's JMAP command-line client.
# Binary-only (closed source); the signed, notarised binary is hosted on
# boogie.digital. Install:
#   brew tap jasonhollis/boogie
#   brew install jmapcli
class Jmapcli < Formula
  desc "JMAP email + calendar client for the command line (by Boogie)"
  homepage "https://boogie.digital/cli/"
  url "https://boogie.digital/cli/jmapcli-1.1.0.tar.gz"
  sha256 "15dce55163fea4633dc0dca773b7359c57ff3dddfa96eae98f98c102fe4012f0"
  license :cannot_represent # proprietary, binary-only

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jmapcli"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/jmapcli --version")
  end
end
