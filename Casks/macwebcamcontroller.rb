cask "macwebcamcontroller" do
  version "0.4.0"
  sha256 "48870dfa56c386f24ab179ae0f3afc0653f580982cca49edb682600445d8284b"

  url "https://github.com/CaskLabs/MacWebcamController/releases/download/v#{version}/MacWebcamController-#{version}.zip"
  name "MacWebcamController"
  desc "Menu bar controller for UVC webcam settings"
  homepage "https://github.com/CaskLabs/MacWebcamController"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "MacWebcamController.app"

  zap trash: [
    "~/Library/Preferences/com.macwebcamcontroller.app.plist",
    "~/Library/Saved Application State/com.macwebcamcontroller.app.savedState",
  ]
end
