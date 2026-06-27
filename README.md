# hypersdk/tap

Homebrew tap for [HyperSDK](https://zyvor.dev) products.

## Install

```bash
brew tap hypersdk/tap
```

---

## Casks

### ZySign — macOS DSC Toolkit for MCA21 V3

> Sign MCA21 V3 eForms directly from your Mac using a USB DSC token — no eMudhra emBridge required.

```bash
brew install --cask hypersdk/tap/zysign
```

**What it installs:** `ZySign.app` dragged to `/Applications` (DMG install, ~89 MB).

| | |
|---|---|
| **Version** | 1.1.0 |
| **macOS** | 13 Ventura or later |
| **Arch** | Apple Silicon + Intel |
| **Homepage** | https://zyvor.dev/zysign |
| **Source** | https://github.com/hypersdk/zysign/releases |

#### Uninstall

```bash
brew uninstall --cask hypersdk/tap/zysign
```

Removes `ZySign.app`. To also remove data files:

```bash
rm -rf ~/Library/Application\ Support/com.zyvor.zysign
rm -f  ~/Library/Preferences/com.zyvor.zysign.plist
```

---

## HyperCluster

```bash
brew install --cask hypersdk/tap/hypercluster
```

---

## Issues

Report bugs or cask update requests at https://github.com/hypersdk/homebrew-tap/issues
