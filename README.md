# YTDLP-Executer-PWSH

**PowerShell Module to Run yt-dlp Interactively with Menu and Sub-Menu**

---
[![Farsi](https://img.shields.io/badge/Farsi-blue?style=for-the-badge)](README-FA.md)
[![GitHub last commit](https://img.shields.io/github/last-commit/davoodya/YTDLP-Executer-PWSH)](https://github.com/davoodya/YTDLP-Executer-PWSH)
[![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/YTDLP-Executer)](https://www.powershellgallery.com/packages/YTDLP-Executer)
[![Lines of Code](https://img.shields.io/badge/dynamic/json?color=blue&label=Lines%20of%20Code&query=TotalLines&url=https%3A%2F%2Fapi.codacy.com%2Fproject%2Fbadge%2Fcomplexity%2Fdummy)](https://github.com/davoodya/YTDLP-Executer-PWSH)

---

## What is this?

**YTDLP-Executer** is a professional, full-featured PowerShell module that takes the `yt-dlp` experience to the next level. Unlike a simple cheatsheet, this module **executes** commands interactively.

With over **5,000 lines of code**, it provides a complete menu-driven interface for downloading videos, audio, subtitles, and playlists from YouTube and other platforms—all through an intuitive interactive terminal experience.

**Think of it as a graphical interface for yt-dlp, but inside your terminal.**

---

## Key Features

- 🎯 **Interactive Menu System** – Navigate through categorized options with sub-menus
- 📥 **Download Anything** – Videos, Audio, Subtitles, Playlists, and more
- ⚙️ **Advanced Options** – Quality selection, format preferences, and advanced parameters
- 💬 **Prompt-Based Input** – After selecting a command, the module guides you with prompts for URLs, quality settings, and other options
- 🧠 **Smart Validation** – Built-in exception handling and input validation to prevent errors
- 🚀 **Fast & Lightweight** – Despite its power, it remains responsive and efficient
- 📂 **Structured Code** – Organized into Core, Data, and Menus folders for maintainability

---

## Quick Start

### 0. Clone the Repository
```powershell
cd /path/to/your/project
git clone https://github.com/davoodya/YTDLP-Executer-PWSH
cd YTDLP-Executer-PWSH
```
Or download the module files directly from the [GitHub repo](https://github.com/davoodya/YTDLP-Executer-PWSH).

### 1. Install the Module
Copy the module folder to your PowerShell modules directory.

**Note:** Find your PowerShell profile path by running `$PROFILE`. If it doesn't exist, create it first.

- For **PowerShell** (modern versions):
```powershell
mkdir "$HOME\Documents\PowerShell\Modules\YTDLP-Executer\" -Force
Copy-Item -Recurse ".\*" "$HOME\Documents\PowerShell\Modules\YTDLP-Executer\" -Force
```

- For **Windows PowerShell** (older versions):
```powershell
mkdir "$HOME\Documents\WindowsPowerShell\Modules\YTDLP-Executer\" -Force
Copy-Item -Recurse ".\*" "$HOME\Documents\WindowsPowerShell\Modules\YTDLP-Executer\" -Force
```

### 2. Import in Your Profile (One-Time Setup)

Open your `$PROFILE` in an editor and add this line:
```powershell
Import-Module YTDLP-Executer
```

Or quickly add it using:
```powershell
Add-Content -Path $PROFILE -Value "`nImport-Module YTDLP-Executer"
```

Then reload your profile (or close and reopen PowerShell):
```powershell
. $PROFILE
```

---

## Usage

Once installed, simply run:
```powershell
ytexec
```

**Menu Navigation:**
- `↑/↓` Arrow keys to navigate
- `Enter` to select an option
- `B` to Back
- `M` to Main Menu
- `R` for Refresh
- `0` to exit

**Workflow:**
1. Browse the main menu (Video, Audio, Subtitle, Playlist, Advanced)
2. Select a category
3. Navigate through sub-menus for specific commands
4. Follow the prompts to enter URLs, quality settings, and other parameters
5. The module executes `yt-dlp` with your selections

---


## Why Upgrade from Cheatsheet?

| Feature | Cheatsheet Module | Executer Module |
|---------|-------------------|-----------------|
| Display Commands | ✅ Yes | ✅ Yes |
| Execute Commands | ❌ No | ✅ Yes |
| Interactive Prompts | ❌ No | ✅ Yes |
| Sub-Menus | ❌ No | ✅ Yes |
| Input Validation | ❌ No | ✅ Yes |
| Error Handling | Basic | Advanced |
| Code Structure | Single file | Modular (5000+ LOC) |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Module not found | Check `$env:PSModulePath -split ';'` and verify the module folder is in one of those directories |
| `Start-YTDLP` not recognized | Run `Import-Module YTDLP-Executer -Force` |
| Profile changes not applied | Restart terminal or run `. $PROFILE` |
| `yt-dlp` not found | Install `yt-dlp` separately: `pip install yt-dlp` or download from [yt-dlp.github.io](https://yt-dlp.github.io/) |
| Execution errors | Ensure you have the latest version of `yt-dlp` and an active internet connection |

---

## Contributing

This is a growing project with over 5,000 lines of code and active development. Contributions are welcome!

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

Check the `RoadMap-CoreDeveloping.txt` file for development priorities.

---

## License

MIT License – free to use, modify, and distribute.

---

## Support

- 📖 **Documentation:** Check the `RoadMap-CoreDeveloping.txt` for upcoming features
- 🐛 **Issues:** Report bugs via [GitHub Issues](https://github.com/davoodya/YTDLP-Executer-PWSH/issues)
- 💬 **Discussions:** Open a discussion for feature requests or questions

---

**Repository:** [github.com/davoodya/YTDLP-Executer-PWSH](https://github.com/davoodya/YTDLP-Executer-PWSH)

**Author:** Davoodya