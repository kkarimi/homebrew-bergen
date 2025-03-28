cask "bergen" do
  version "0.1.9"
  sha256 "028614797c76f99ed08b415d02a01744a5233ce15ffd9169559f0f4289ef061c"

  url "https://github.com/kkarimi/bergen/releases/download/v#{version}/bergen-macos-v0.1.9.zip"
  name "Bergen"
  desc "Lightweight markdown reader"
  homepage "https://github.com/kkarimi/bergen"
  
  depends_on macos: ">= :big_sur"

  app "bergen.app"

  zap trash: [
    "~/Library/Application Support/bergen",
    "~/Library/Caches/bergen",
    "~/Library/Preferences/com.zendo.bergen.plist",
    "~/Library/Saved Application State/com.zendo.bergen.savedState",
  ]
end
