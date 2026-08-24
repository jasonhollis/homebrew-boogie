# Homebrew formula for jmapcli — Boogie's JMAP command-line client.
# Binary-only (closed source); the signed, notarised binary is hosted on
# boogie.digital. Install:
#   brew tap jasonhollis/boogie
#   brew install jmapcli
class Jmapcli < Formula
  desc "JMAP email + calendar client for the command line (by Boogie)"
  homepage "https://boogie.digital/cli/"
  url "https://boogie.digital/cli/jmapcli-1.4.5.tar.gz"
  sha256 "638ee883b781723fd0caeb7bb8ccb6ce293f189456dd2851e42b1fea5ab64a9b"
  license :cannot_represent # proprietary, binary-only

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jmapcli"
  end

  test do
    assert_match "1.4.5", shell_output("#{bin}/jmapcli --version")
  end
end
