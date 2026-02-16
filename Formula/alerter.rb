class Alerter < Formula
  desc "macOS notification CLI — send native notifications and capture user interactions"
  homepage "https://github.com/vjeantet/alerter"
  version "2.0.0"
  url "https://github.com/vjeantet/alerter/releases/download/v#{version}/alerter-#{version}.zip"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on :macos

  def install
    bin.install "alerter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alerter --version")
  end
end
