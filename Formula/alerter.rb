class Alerter < Formula
  desc "macOS notification CLI — send native notifications and capture user interactions"
  homepage "https://github.com/vjeantet/alerter"
  version "26.3"
  url "https://github.com/vjeantet/alerter/releases/download/v#{version}/alerter-#{version}.zip"
  sha256 "49b199a57c8178e3f8c0e20a220af72c045d6eef5e825f181788c5757ea6861d"
  license "MIT"

  depends_on :macos

  def install
    bin.install "alerter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alerter --version")
  end
end
