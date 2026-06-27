cask "zysign" do
  version "1.1.0"
  sha256  "d198c88d29e79e98f718dfa2b943b41c9ce39ac352a503890fdc0aa02572920c"

  url "https://github.com/hypersdk/zysign/releases/download/v#{version}/ZySign-#{version}.dmg"
  name "ZySign"
  desc "macOS DSC signing toolkit for MCA21 V3 — replaces eMudhra emBridge"
  homepage "https://zyvor.dev/zysign"

  depends_on macos: :ventura

  app "ZySign.app"

  uninstall quit: "com.zyvor.zysign"

  zap trash: [
    "~/Library/Application Support/com.zyvor.zysign",
    "~/Library/Preferences/com.zyvor.zysign.plist",
    "/Library/ZySignBridge",
  ]
end
