cask "oh-my-tab" do
  depends_on macos: :ventura
  depends_on arch: :arm64
  version "0.2.5"
  sha256 "fffbf4ba72c021483b47621b5dc2a9333fca860f2682a5abdd60409d3f2bdde9"
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
