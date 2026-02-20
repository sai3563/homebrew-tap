cask "aipepito" do
  version "26.16"
  sha256 "1d779e0be3b3040a5ffa9d54663395d5e8afded68b21e0f4443873c4d6cf425c"

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
