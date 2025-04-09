# macOS-shell-kit

A small collection of lightweight Bash scripts for macOS to boost your productivity and system awareness — all from the terminal.

> 📁 Scripts are located in the `scripts/` folder.

---

## 📜 Available Scripts

### 🔋 Battery Alert – `battery_alert.sh`

Monitors your MacBook’s battery level and notifies you with a macOS popup when it drops below **30%** (default).

**Why this script?**  
- macOS built-in alerts sometimes fail or are unreliable.
- Useful for old batteries that might shut down at 20% or earlier.
- Fully customizable threshold.

**Usage:**
```bash
chmod +x scripts/battery_alert.sh
./scripts/battery_alert.sh
```

---

### ⏳ Break Timer – `break_timer.sh`

A terminal-based countdown timer that notifies you with a popup when the time is up. Great for **pomodoros**, **rest breaks**, or **focused sprints**.

**Usage:**
```bash
chmod +x scripts/break_timer.sh
./scripts/break_timer.sh 0 25 0  # 25-minute session
```
Parameters: `hours minutes seconds`

---

### 🛠️ Homebrew Permissions Fix – `fix_homebrew_permissions.sh`

Fixes common permission issues with Homebrew on macOS.

**Usage:**
```bash
chmod +x scripts/fix_homebrew_permissions.sh
./scripts/fix_homebrew_permissions.sh
```

---

## 🧾 Cheat Sheet

Want a quick summary of commands and what they do?  
Check out [`cheatsheet/cheat-sheet.md`](cheatsheet/cheat-sheet.md)

---

## ⚙️ Requirements

- macOS  
- Bash  
- AppleScript (pre-installed on macOS)

---

## 📌 Notes

- These scripts are **macOS-specific**.
- Feel free to edit and customize thresholds, styles, and logic.
- Tested on macOS Monterey & Ventura.

---

## 📜 License

MIT License — Use, fork, and share freely 🚀
```
