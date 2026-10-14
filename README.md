# CaskLabs Homebrew tap

Install this tap using its explicit repository URL:

```bash
brew tap CaskLabs/tap https://github.com/CaskLabs/tap
```

Available apps:

| Cask | App | Requirements |
| --- | --- | --- |
| `ilce-toolkit` | [ILCE Toolkit](https://github.com/CaskLabs/ILCE-Toolkit) — Sony camera tools | Apple Silicon, macOS 14 or newer |
| `macwebcamcontroller` | [MacWebcamController](https://github.com/CaskLabs/MacWebcamController) — UVC webcam settings | Apple Silicon, macOS 26 or newer |

```bash
brew install --cask ilce-toolkit
brew upgrade --cask ilce-toolkit
```

ILCE Toolkit releases are ad hoc signed, without Apple Developer ID signing or
notarization. If macOS blocks the first launch, attempt to open the app, then
choose **System Settings → Privacy & Security → Open Anyway** and confirm the
exception for ILCE Toolkit. See [Apple's instructions](https://support.apple.com/guide/mac-help/mh40617/mac).

The cask verifies the release ZIP's SHA-256 checksum and preserves macOS
quarantine checks. It does not disable Gatekeeper.
