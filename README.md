# 🛠 liante0904's Dotfiles

Personal configuration files for macOS (Mac mini & MacBook Air).

## 📦 Included Configurations

- **Ghostty**: Modern terminal emulator configuration.

## 🚀 Quick Start (on a new machine)

```bash
# 1. Clone the repository
mkdir -p ~/dev && cd ~/dev
git clone git@github.com:liante0904/dotfiles.git

# 2. Run the setup script
cd dotfiles
chmod +x setup.sh
./setup.sh
```

## 🔄 How to Sync

### Push changes (from machine with updates)
```bash
cd ~/dev/dotfiles
git add .
git commit -m "Update config"
git push origin main
```

### Pull changes (on other machines)
```bash
cd ~/dev/dotfiles
git pull origin main
```

## 🛠 Manual Symbolic Links (Reference)
- Ghostty: `ln -s ~/dev/dotfiles/ghostty/config ~/.config/ghostty/config`
