class Alerter < Formula
  desc "macOS notification CLI — send native notifications and capture user interactions"
  homepage "https://github.com/vjeantet/alerter"
  version "26.2"
  url "https://github.com/vjeantet/alerter/releases/download/v#{version}/alerter-#{version}.zip"
  sha256 "6f83c15220b984376572bde8095c16efa84b2efa1497ec71055373460f622024"
  license "MIT"

  depends_on :macos

  def install
    bin.install "alerter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alerter --version")
  end
end
