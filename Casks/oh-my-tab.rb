cask "oh-my-tab" do
  depends_on macos: :ventura
  depends_on arch: :arm64
  version "0.1.6"
  sha256 "676ad426b142251073d332cf0137a9622188f9361285eee43c9f0d82dbbe7749"
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
