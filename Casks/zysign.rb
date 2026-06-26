cask "zysign" do
  version "1.1.0"
  sha256  "234360354ca95020351adf3554efbb489a96edae2419bcff75c921ef10f41509"

  url "https://github.com/hypersdk/zysign/releases/download/v#{version}/ZySign-#{version}.pkg"
  name "ZySign"
  desc "macOS DSC signing toolkit for MCA21 V3 — replaces eMudhra emBridge"
  homepage "https://zyvor.dev/mac-sign"

  depends_on macos: :ventura

  pkg "ZySign-#{version}.pkg"

  uninstall pkgutil: "com.zyvor.zysign"

  zap trash: [
    "~/Library/Application Support/com.zyvor.zysign",
    "~/Library/Preferences/com.zyvor.zysign.plist",
    "/Library/ZySignBridge",
  ]
end
