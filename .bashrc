# 🧠 Mellogram Login Shell – Keitumetse Modisenyane

# 🔐 Login Prompt with Mellogram Banner
if [ -z "$CIVIC_AUTHENTICATED" ]; then
  clear
  echo "╔══════════════════════════════════════════════════════════════════════╗"
  echo "║                           Mellogram                               ║"
  echo "╚══════════════════════════════════════════════════════════════════════╝"
  echo "🔐 Welcome to the Civic Tech Mellogram Shell"
  read -p "Username: " user
  read -sp "Password: " pass
  echo
  if [ "$user" = "keitumetse" ] && [ "$pass" = "modisenyane" ]; then
    export CIVIC_AUTHENTICATED=1
  else
    echo "❌ Invalid credentials. Exiting..."
    exit
  fi
fi

# 🧭 Civic Dashboard
if [ -z "$CIVICMENUSHOWN" ]; then
  export CIVICMENUSHOWN=1
  clear
  echo "╔══════════════════════════════════════════════════════════════════════╗"
  echo "║  🧠 Welcome to Keitumetse Modisenyane's Web Development Environment  ║"
  echo "║  🛠️  Civic Tech | Identity | Network Security | Mokwallo Rollout     ║"
  echo "╚══════════════════════════════════════════════════════════════════════╝"
  echo
  echo "Choose a module to launch:"
  echo " 1. Netwatch – Internal Network Scanner"
  echo " 2. K2 Firewall – Identity Cockpit"
  echo " 3. MokwalloIDGuard – ID Verifier"
  echo " 4. IPDrone – Network Mapper"
  echo " 5. Termux Quarantine – App Isolation"
  echo " 6. Exit to Shell (Main Dir)"
  echo " 7. Junk Cleaner – System Cleanup"
  echo " 8. Intrusion Detect – Threat Monitor"
  echo " 9. Code Generator – Script Builder"
  echo "10. ASCII Hub – Art & Banners"
  echo "11. EduPortal – Learning Directory"
  echo "12. Happy Handyman – Service Manager"
  echo "13. Acode Server – Live Server"
  echo "14. ESLint Lint – Code Linter"
  echo "15. Stylelint Lint – Style Linter"
  echo "16. Code Generator – Advanced Builder"
  echo "17. Security Scan – Vulnerability Check"
  echo "18. Number Tools – Lotto Predictor"
  echo "19. Civic Mellogram – Return to Dashboard"
  read -p "Enter choice [1-19]: " choice

  case $choice in
    1) bash ~/tools/netwatch.sh ;;
    2) bash ~/tools/k2firewall.sh ;;
    3) bash ~/tools/mokwalloidguard.sh ;;
    4) bash ~/tools/ipdrone.sh ;;
    5) bash ~/tools/termuxquarantine.sh ;;
    6) cd ~ && clear && echo "📂 You're now in your main directory: ~" ;;
    7) bash ~/tools/junkcleaner.sh ;;
    8) bash ~/tools/intrusiondetect.sh ;;
    9) bash ~/tools/codegen.sh ;;
   10) bash ~/tools/asciihub.sh ;;
   11) bash ~/tools/eduportal.sh ;;
   12) bash ~/tools/happyhandyman.sh ;;
   13) bash ~/tools/acode-server.sh ;;
   14) bash ~/tools/eslint-lint.sh ;;
   15) bash ~/tools/stylelint-lint.sh ;;
   16) bash ~/tools/code-generator.sh ;;
   17) bash ~/tools/security-scan.sh ;;
   18) bash ~/tools/number-tools.sh ;;
   19) exec bash ;;
    *) echo "Invalid choice." ;;
  esac
fi

# 🔢 Numbered Shortcuts
alias 1='bash ~/tools/netwatch.sh'
alias 2='bash ~/tools/k2firewall.sh'
alias 3='bash ~/tools/mokwalloidguard.sh'
alias 4='bash ~/tools/ipdrone.sh'
alias 5='bash ~/tools/termuxquarantine.sh'
alias 6='cd ~ && clear'
alias 7='bash ~/tools/junkcleaner.sh'
alias 8='bash ~/tools/intrusiondetect.sh'
alias 9='bash ~/tools/codegen.sh'
alias 10='bash ~/tools/asciihub.sh'
alias 11='bash ~/tools/eduportal.sh'
alias 12='bash ~/tools/happyhandyman.sh'
alias 13='bash ~/tools/acode-server.sh'
alias 14='bash ~/tools/eslint-lint.sh'
alias 15='bash ~/tools/stylelint-lint.sh'
alias 16='bash ~/tools/code-generator.sh'
alias 17='bash ~/tools/security-scan.sh'
alias 18='bash ~/tools/number-tools.sh'
alias 19='exec bash'

# 🧰 Named Shortcuts
alias netwatch='bash ~/tools/netwatch.sh'
alias k2firewall='bash ~/tools/k2firewall.sh'
alias mokwalloidguard='bash ~/tools/mokwalloidguard.sh'
alias ipdrone='bash ~/tools/ipdrone.sh'
alias termuxquarantine='bash ~/tools/termuxquarantine.sh'
alias junkcleaner='bash ~/tools/junkcleaner.sh'
alias intrusiondetect='bash ~/tools/intrusiondetect.sh'
alias codegen='bash ~/tools/codegen.sh'
alias asciihub='bash ~/tools/asciihub.sh'
alias eduportal='bash ~/tools/eduportal.sh'
alias happyhandyman='bash ~/tools/happyhandyman.sh'
alias acode-server='bash ~/tools/acode-server.sh'
alias eslint-lint='bash ~/tools/eslint-lint.sh'
alias stylelint-lint='bash ~/tools/stylelint-lint.sh'
alias code-generator='bash ~/tools/code-generator.sh'
alias security-scan='bash ~/tools/security-scan.sh'
alias number-tools='bash ~/tools/number-tools.sh'

# 🧭 Navigation Shortcuts with Icons
alias navhome='cd ~/🏠home'
alias navprojects='cd ~/📁projects'
alias navedu='cd ~/📚edu'
alias navmellogram='cd ~/🧠mellogram'
alias nav_tools='cd ~/tools'

# Custom Modifications
alias whoami='echo tjkm900108@gmail.com'
alias ps='echo tjkm900108@gmail.com'

# 🎨 Custom Prompt with Icons for Directories
set_prompt() {
  local dir_icon="📂"
  case "$PWD" in
    "$HOME/🏠home") dir_icon="🏠" ;;
    "$HOME/📁projects") dir_icon="📁" ;;
    "$HOME/📚edu") dir_icon="📚" ;;
    "$HOME/🧠mellogram") dir_icon="🧠" ;;
    "$HOME/tools") dir_icon="🛠️" ;;
  esac
  PS1="$dir_icon \w \$ "
}
PROMPT_COMMAND=set_prompt

# 📁 Organize Main Dir with Icons in ls
alias ls='lsd --icon=always --color=always'
