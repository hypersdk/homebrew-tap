cask "zysign" do
  version "1.1.0"
  sha256  "FILL_IN_AFTER_make_dmg"   # shasum -a 256 dist/ZySign-1.1.0.dmg

  url "https://github.com/hypersdk/zysign/releases/download/v#{version}/ZySign-#{version}.dmg"
  name "ZySign"
  desc "macOS DSC signing toolkit for MCA21 V3 — replaces eMudhra emBridge"
  homepage "https://github.com/hypersdk/zysign"

  depends_on macos: :ventura

  app "ZySign.app"

  zap trash: [
    "~/Library/Application Support/com.zyvor.zysign",
    "~/Library/Preferences/com.zyvor.zysign.plist",
    "/Library/ZySignBridge",
  ]
end
