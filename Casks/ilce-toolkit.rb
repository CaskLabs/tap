cask "ilce-toolkit" do
  version "0.1.0"
  sha256 "e79ff9a27ca9d6cc196f2e45e0110e50130db69f4d238507e56e1a37e48684d7"

  url "https://github.com/CaskLabs/ILCE-Toolkit/releases/download/v#{version}/ILCE-Toolkit-#{version}-macos-arm64.zip"
  name "ILCE Toolkit"
  desc "Desktop toolkit for Sony cameras"
  homepage "https://github.com/CaskLabs/ILCE-Toolkit"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ILCE Toolkit.app"

  caveats <<~EOS
    ILCE Toolkit is ad hoc signed, without Apple Developer ID or notarization.
    If macOS blocks the first launch, open System Settings > Privacy & Security
    and select Open Anyway after attempting to launch ILCE Toolkit.
  EOS
end
