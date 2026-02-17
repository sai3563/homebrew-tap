class Alerter < Formula
  desc "macOS notification CLI — send native notifications and capture user interactions"
  homepage "https://github.com/vjeantet/alerter"
  version "26.4"
  url "https://github.com/vjeantet/alerter/releases/download/v#{version}/alerter-#{version}.zip"
  sha256 "bb4d25df371d3b664d487e84dfb6386991b8b8a8170b81d71dff66a6f505156d"
  license "MIT"

  depends_on :macos

  def install
    bin.install "alerter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alerter --version")
  end
end
