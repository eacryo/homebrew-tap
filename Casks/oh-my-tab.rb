cask "oh-my-tab" do
  depends_on macos: :ventura
  depends_on arch: :arm64
  version "0.1.2"
  sha256 "e8829661fe12b0f13fa1f712ec3f73a8c118082d114de410e9fafefdf19946c7"
  url "https://github.com/eacryo/oh-my-tab/releases/download/v#{version}/Oh-My-Tab.dmg"
  name "Oh-My-Tab"
  desc "macOS window switcher (Cmd+Tab alternative)"
  homepage "https://github.com/eacryo/oh-my-tab"
  app "Oh-My-Tab.app"

  zap trash: [
    "~/Library/Caches/oh-my-tab-icons",
    "~/Library/Logs/oh-my-tab",
    "~/.config/oh-my-tab",
  ]
end
