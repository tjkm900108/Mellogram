#!/data/data/com.termux/files/usr/bin/bash
# 🧭 Termux Cockpit Dashboard
# Author: Keitumetse Modisenyane

while true; do
  clear
  echo "┌────────────────────────────────────────────┐"
  echo "│ 🧭 Termux Cockpit — System Control Center │"
  echo "└────────────────────────────────────────────┘"
  echo "1️⃣  Clean system (remove outdated packages)"
  echo "2️⃣  Backup environment (ZIP kit)"
  echo "3️⃣  Restore environment (from ZIP)"
  echo "4️⃣  Exit"
  echo ""
  read -p "Choose an option [1-4]: " choice

  case "$choice" in
    1)
      bash $HOME/bin/clean-system.sh
      read -p "Press Enter to return to menu..."
      ;;
    2)
      zip -r $HOME/termux-backup-$(date +%F).zip $HOME/bin $HOME/.termux-cleanup
      echo "✅ Backup created in home directory."
      read -p "Press Enter to return to menu..."
      ;;
    3)
      echo "📦 Available backups:"
      ls $HOME/termux-backup-*.zip
      read -p "Enter ZIP filename to restore: " zipfile
      unzip -o "$HOME/$zipfile" -d $HOME
      echo "✅ Environment restored."
      read -p "Press Enter to return to menu..."
      ;;
    4)
      echo "👋 Exiting cockpit. Stay proud, Keitumetse!"
      break
      ;;
    *)
      echo "❌ Invalid choice. Try again."
      sleep 1
      ;;
  esac
done
