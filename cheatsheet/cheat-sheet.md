## 🧠 **macOS Sleep Debugging Cheat Sheet**

### 🔍 `pmset -g assertions`
- **Description:** Shows current power management assertions preventing the system from sleeping.
- **Use Case:** Useful when you want to know what processes (like Chrome or Brave) are keeping your Mac awake.

---

### 🧾 `log show --predicate 'eventMessage contains "assertion created"' --info --last 24h`
- **Description:** Displays logs of assertion creation events from the last 24 hours.
- **Use Case:** Helps identify which apps created sleep-preventing assertions and when.

---

### 🧾 `log show --predicate 'eventMessage contains "assertion released"' --info --last 24h`
- **Description:** Displays logs of assertion release events from the last 24 hours.
- **Use Case:** Lets you see when apps released the assertions and allowed the system to sleep again.

---

### 📜 `pmset -g log | grep -i "sleep"`
- **Description:** Shows detailed sleep and wake events from the system power management log.
- **Use Case:** Useful for checking when your Mac actually tried to sleep or woke up.

---

### 🧰 `caffeinate`
- **Description:** Prevents the system from sleeping while the command is running.
- **Use Case:** Use this if you want to keep your Mac awake manually, for example:  
  `caffeinate -t 3600` → stays awake for 1 hour.

## 💽 macOS Disk Tools Cheat Sheet
Great! Here's the updated and organized **macOS Sleep & Disk Tools Cheat Sheet**, combining everything so far:

### 🔎 `diskutil list`
- **Description:** Lists all disks and volumes on your Mac, both internal and external.
- **Use Case:** First step to identify the name (e.g., `disk4`) and partitions of a connected drive.

---

### 📂 diskutil mount /dev/diskX
- **Description:** Mounts a previously unmounted volume or disk to make it accessible in Finder.
- **Use Case:** If an external drive is detected (e.g., with diskutil list) but not showing up in Finder, use this to manually mount it.
---

### 🧼 `diskutil unmountDisk /dev/diskX`
- **Description:** Unmounts all volumes of the disk safely.
- **Use Case:** Use before physically removing a drive or before erasing it.
