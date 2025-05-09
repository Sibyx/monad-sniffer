# Monad Sniffer

A modular system for deploying Wi-Fi and BLE sniffers using Raspberry Pi 5 and Intel AX210. Managed via Ansible with
multiple operational modes and auto-discovery using Avahi.

## Features

- 802.11 L2 sniffing and CSI collection (Intel AX210)
- BLE advertisement beaconing
- Development and production switching (Wi-Fi and Ethernet modes)
- Device discovery and metadata via mDNS/Avahi

## Usage

```bash
cd ansible
ansible-playbook playbooks/provision.yml -l monad-sniffer-01
```

---
Created with ❤️ using ☕️ for my kawaii PhD thesis on FIIT STU

If you enjoy using this project, consider donating! Your donations will go towards therapy sessions because
I'm an alcoholic and substance abuser and this is my cry for help. Cheers 🍻!
