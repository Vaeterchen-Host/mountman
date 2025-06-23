# mountman – USB Mounting Scripts (Bash)

**English:**
This repository contains Bash scripts to simplify the process of mounting and unmounting USB drives.
Currently tailored to one specific device (Kingston Onyx), the scripts are modular and can easily be adapted to other devices.
Future features include automatic UUID detection and interactive device selection.

**Deutsch:**
Dieses Repository enthält Bash-Skripte, um das Mounten und Aushängen von USB-Sticks zu vereinfachen.
Derzeit auf ein bestimmtes Gerät (Kingston Onyx) ausgelegt, sind die Skripte modular aufgebaut und lassen sich leicht an andere Geräte anpassen.
Geplante Erweiterungen beinhalten automatische UUID-Erkennung und interaktive Geräteauswahl.

---

## Scripts

### `mountman.sh` – Version 0.6

**EN:** Mounts the Kingston Onyx drive using its known UUID.

**DE:** Mountet den Kingston-Onyx-Stick anhand seiner bekannten UUID.

#### Planned Features / Geplante Funktionen:

* UUID auto-detection
* Menu-based device selection
* Device verification before mounting
* Check if device is already mounted

---

### `umountman.sh` – Version 0.6

**EN:** Unmounts the Kingston Onyx device cleanly.

**DE:** Hängt den Kingston-Onyx-Stick sauber aus.

#### Planned Features / Geplante Funktionen:

* Lazy unmount fallback
* Detailed error handling
* UUID-based unmounting for generic use
* Prüfung ob das Gerät bereits gemountet wurde

---

## Structure / Struktur

```text
mountman/
├── LICENSE
├── mountman.sh
├── umountman.sh
├── README.md
└── versions/
    └── v0.6/
        ├── mountman.sh
        └── umountman.sh
```

> `versions/` holds historical snapshots of each version.
> `versions/` enthält archivierte Versionen der Skripte.

---

## License

MIT License – see [LICENSE](./LICENSE) file.

---

## Requirements / Voraussetzungen

* Linux OS with `bash`, `mount`, `umount`, `systemctl`
* Root permissions for device access (uses `sudo`)
* UUID path configured for the target device (`/dev/disk/by-uuid/...`)

---

## Tested With / Getestet mit

* Kingston Onyx 256GB (formatted with FAT32)
* Fedora Linux 42 (KDE Plasma Desktop)

---

Disclaimer / Haftungsausschluss

EN: This is a purely non-commercial hobby project. It has no relation to any commercial entities or products using the name "Mountman" or similar.
All names are used in an informal, humorous context.

DE: Dies ist ein rein privates Hobbyprojekt ohne kommerzielle Absichten. Es besteht keinerlei Verbindung zu Unternehmen oder Produkten mit ähnlichem Namen.
Alle Namen werden informell und mit ironischem Unterton verwendet.

---

This is my first serious Bash-Repo. Enhancements, pull requests or feedback are always welcome.

Dies ist mein erstes ernst gemeintes Bash-Repo. Verbesserungen, Pull Requests oder Feedback sind jederzeit willkommen.

