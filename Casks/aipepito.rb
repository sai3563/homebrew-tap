cask "aipepito" do
  version "26.14"
  sha256 "156b8d0c0d7aeb8dce9e068612004359f83fd0823e8bdca361954f8b6a40284c"

  url "https://github.com/vjeantet/aipepito-releases/releases/download/v#{version}/AIPepito.dmg"
  name "AIPepito"
  desc "Meeting recording with automatic transcription and AI-generated reports"
  homepage "https://github.com/vjeantet/aipepito-releases"

  depends_on macos: ">= :sonoma"

  app "AIPepito.app"

  zap trash: [
    "~/Library/Preferences/fr.sodadi.aipepito.plist",
  ]
end
