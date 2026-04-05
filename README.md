# ⚓ SailOS 1.0 — Custom Linux OS
> **The animator-focused distribution built for the next generation of creators.**

---

## 📖 About
SailOS 1.0 is a custom Linux operating system built on a **Zorin OS 18 (Ubuntu 24.04)** base. It is specifically tuned for animators, VTubers, and technical creators who need a dark, sleek, and efficient environment.

---

## 📥 Special Download Instructions (IMPORTANT)
> [!IMPORTANT]
> **GitHub has a 2GB file limit.** To host SailOS, the ISO has been split into multiple parts. You **must** follow these steps to combine them, or the OS will not boot.

### 1. Download all parts
Download every file ending in `.001`, `.002`, etc., from the [Releases](https://github.com/ronsanimations/SailOS/releases) tab and put them in the **same folder**.

### 2. Extract with 7-Zip
You cannot use standard Windows "Extract All" for this.
1. Download/Install [7-Zip](https://www.7-zip.org/).
2. Right-click **ONLY** the first file: `SailOS.7z.001`.
3. Select **7-Zip > Extract Here**.
4. This will create the full **SailOS.iso** (approx. 5.11 GB).

---

## 🛠️ How to Flash the ISO
> [!TIP]
> For the most reliable boot, use **Rufus** in **ISO Image Mode** (standard) with the settings below.

### Using Rufus (Recommended)
1. **Device:** Select your USB or SD Card (1TB cards & smaller thumb drives supported).
2. **Boot Selection:** Select your extracted `SailOS.iso`.
3. **Partition Scheme:** Set to **GPT** (Crucial for Windows 11 desktops).
4. **Target System:** Set to **UEFI (non CSM)**.
5. **Start:** If prompted between ISO and DD mode, try **ISO Mode** first for better compatibility with adapters.

> [!CAUTION]
> **BIOS SETTINGS:** You must **Disable Secure Boot** in your computer's BIOS/UEFI settings, or the system will block SailOS from starting.

---

## 🚀 Included Apps
* **Veadotube Mini** – VTuber avatar software (SDL3 compiled).
* **OBS Studio 30.0** – Professional streaming & recording.
* **Discord** – Community and collaboration.
* **Dark Mode Style** – Enabled by default for all system menus.

---

## 💻 System Requirements
| Component | Minimum | Recommended |
| :--- | :--- | :--- |
| **Processor** | 64-bit (x86_64) | Quad-Core or better |
| **RAM** | 4GB | 8GB+ |
| **Storage** | 20GB Free Space | SSD Recommended |
| **Boot Media** | 2GB+ USB Drive | High-Speed USB 3.0 |

---

## 🏗️ Built With
* **Base:** Zorin OS 18
* **Tool:** Cubic Custom Ubuntu ISO Creator
* **Packages:** Flatpak + Flathub
* **Branding:** Custom `root@user` Green Terminal Prompt

---

## 🎨 Credits
**Built by [Ron's Animations](https://github.com/ronsanimations)** *Made with love for the animation community.* 🚢⚓
