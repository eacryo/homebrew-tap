cask "oh-my-tab" do
  depends_on macos: :ventura
  depends_on arch: :arm64
  version "0.1.8"
  sha256 "9820b26afdcff2cad299f81175054099b3aeaa5a6fbb05488184940e3c9d0016"
  url "https://github.com/eacryo/oh-my-tab/releases/download/v#{version}/Oh-My-Tab.dmg"
  name "Oh-My-Tab"
  desc "macOS window switcher (Cmd+Tab alternative)"
  homepage "https://github.com/eacryo/oh-my-tab"
  app "Oh-My-Tab.app"

  zap trash: [
    "~/Library/Caches/oh-my-tab-icons",
    "~/Library/Logs/oh-my-tab",
    "~/.config/oh-my-tab",
    "~/Library/Caches/oh-my-tab-clip-images",
  ]
end
