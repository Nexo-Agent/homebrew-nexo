cask "nexo" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 :no_check

  url "https://github.com/magiskboy/nexo/releases/download/v#{version}/Nexo_#{version}_#{arch}.dmg"
  name "Nexo"
  desc "A Smart AI Assistant for Everyone"
  homepage "https://nexo.nkthanh.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Nexo.app"

  zap trash: [
    "~/Library/Application Support/com.nexo.app",
    "~/Library/Caches/com.nexo.app",
    "~/Library/Saved Application State/com.nexo.app.savedState",
    "~/Library/Preferences/com.nexo.app.plist",
    "~/Library/WebKit/com.nexo.app",
    "~/Library/Logs/Nexo"
  ]
end
