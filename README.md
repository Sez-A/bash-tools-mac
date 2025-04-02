# bash-tools-mac

A collection of simple Bash scripts for macOS that provide useful system notifications.

## 📜 Scripts

### 🔋 Battery Monitor (`battery_alert.sh`)
Monitors your MacBook's battery and notifies you when it drops to **30%**.

#### ❓ Why this script?  
I know macOS has a built-in low battery notification, but I created this script because:  
1. My **Mac's notification system broke**, and it stopped warning me about low battery. I couldn't fix the issue.  
2. My **battery is old**, and if it reaches **20%**, it sometimes **shuts down immediately** before macOS can warn me. Restarting takes a long time, so I needed a more flexible solution.  

#### ✅ Usage:
```bash
chmod +x battery_alert.sh
./battery_alert.sh
```
- Runs in the background and checks the battery level every minute.  
- Shows a **macOS popup notification** when the battery reaches **30%**.  
- You can change the threshold by modifying the script.  

---

### ⏳ Countdown Timer (`break_timer.sh`)
A terminal-based countdown timer with a **macOS notification** when time is up.

#### ✅ Usage:
```bash
chmod +x break_timer.sh
./break_timer.sh 0 5 0  # 5-minute timer
```
- Takes **hours, minutes, and seconds** as arguments.  
- Displays a **live countdown** in the terminal.  
- Notifies you with a **popup alert** when time is up.  

---

## ⚙️ Requirements
- macOS  
- Bash  
- AppleScript (built into macOS)  

## 📌 Notes
- These scripts **only work on macOS**.  
- You can modify them to suit your needs.  

## 📜 License
MIT License - Feel free to use and modify these scripts. 
