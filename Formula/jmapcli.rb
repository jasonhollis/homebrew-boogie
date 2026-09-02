# Homebrew formula for jmapcli — Boogie's JMAP command-line client.
# Binary-only (closed source); the signed, notarised binary is hosted on
# boogie.digital. Preferred install (no GitHub username):
#   brew install https://boogie.digital/cli/jmapcli.rb
class Jmapcli < Formula
  desc "JMAP email + calendar client for the command line (by Boogie)"
  homepage "https://boogie.digital/cli/"
  url "https://boogie.digital/cli/jmapcli-1.5.0.tar.gz"
  version "1.5.0"
  sha256 "4dfdf80d10ce8ce7b62a62d42f1e80263b7b5cd389290fc07cef633534280d31"
  license :cannot_represent # proprietary, binary-only

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jmapcli"
  end

  test do
    assert_match "1.5.0", shell_output("#{bin}/jmapcli --version")
  end
end
