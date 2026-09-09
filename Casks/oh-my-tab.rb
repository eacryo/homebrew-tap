cask "oh-my-tab" do
  depends_on macos: :ventura
  depends_on arch: :arm64
  version "0.2.0"
  sha256 "e3981b72e9a597dd82130c142f8b224ddc0fef9eed0819572804c6f99e236b53"
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
