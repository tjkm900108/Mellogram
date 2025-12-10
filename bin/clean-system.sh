#!/data/data/com.termux/files/usr/bin/bash
# 🧼 Termux System Cleanup Script
# Author: Keitumetse Modisenyane

LOG="$HOME/.termux-cleanup/cleanup-$(date +%F).log"
mkdir -p "$(dirname "$LOG")"

echo "🔧 Starting system cleanup..." | tee -a "$LOG"

{
  echo "📦 Updating package lists..."
  apt update

  echo "⬆️ Upgrading installed packages..."
  apt upgrade -y

  echo "🧹 Removing unused dependencies..."
  apt autoremove -y

  echo "🗑️ Clearing package cache..."
  apt clean

  echo "🧼 Removing obsolete archives..."
  apt autoclean
} | tee -a "$LOG"

echo "✅ Cleanup complete. Log saved to: $LOG"
