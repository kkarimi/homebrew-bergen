cask "bergen" do
  version "0.1.18"
  sha256 "9a8059c3afad6bc2baa95476309fa29a972c805c47f39391d7ad9611acb534d0"

  url "https://github.com/kkarimi/bergen/releases/download/v#{version}/bergen-macos-v0.1.18.zip"
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
