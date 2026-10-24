# Final Fantasy Resonance - Skip Intro

A [UE4SS](https://github.com/UE4SS-RE/RE-UE4SS) mod for **Final Fantasy Resonance** that skips the intro logo screens and boots straight to the main menu.

Also works with the **demo**, where it additionally skips the "thank you" screen that normally requires pressing `F`.

## Requirements
- Final Fantasy Resonance or Final Fantasy Resonance Demo

UE4SS (experimental build v3.0.1-1181, required for Unreal Engine 5.6) is included in the download, so you don't need to install it separately.

## Installation

Download the latest from [Releases](https://github.com/evilbananas/FinalFantasyResonance-SkipIntro/releases) and extract it into the top-level game folder, the one containing `FFRS.exe`.

You should end up with:
```
FFRS\Binaries\Win64\
├── ue4ss\
│   ├── Mods\SkipIntro\
│   ├── UE4SS.dll
│   ├── UE4SS-settings.ini
│   └── UE4SS_LICENSE.txt
└── dwmapi.dll
```

> If already using UE4SS, extract only the `ue4ss\Mods\SkipIntro` folder into your existing UE4SS `Mods` folder.

## Uninstall
- **Remove the mod:** delete the `FFRS\Binaries\Win64\ue4ss\Mods\SkipIntro` folder.
- **Remove UE4SS:** delete `dwmapi.dll` and the `ue4ss` folder from `FFRS\Binaries\Win64\`.

## Credits
- [UE4SS](https://github.com/UE4SS-RE/RE-UE4SS) experimental build v3.0.1-1181 by the UE4SS-RE team, included under the MIT License (see `UE4SS_LICENSE.txt`)

## License
[MIT](LICENSE)
