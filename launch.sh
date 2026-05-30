#!/usr/bin/env bash
# ─────────────────────────────────────────────
#  PromptKit Launcher
#  Τρέχει τοπικό server και ανοίγει το browser
# ─────────────────────────────────────────────

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PORT=8371

# Χρώματα για output
G='\033[0;32m'; Y='\033[1;33m'; C='\033[0;36m'; R='\033[0;31m'; N='\033[0m'

echo -e "${C}"
echo "  ██████╗ ██████╗  ██████╗ ███╗   ███╗██████╗ ████████╗██╗  ██╗██╗████████╗"
echo "  ██╔══██╗██╔══██╗██╔═══██╗████╗ ████║██╔══██╗╚══██╔══╝██║ ██╔╝██║╚══██╔══╝"
echo "  ██████╔╝██████╔╝██║   ██║██╔████╔██║██████╔╝   ██║   █████╔╝ ██║   ██║   "
echo "  ██╔═══╝ ██╔══██╗██║   ██║██║╚██╔╝██║██╔═══╝    ██║   ██╔═██╗ ██║   ██║   "
echo "  ██║     ██║  ██║╚██████╔╝██║ ╚═╝ ██║██║        ██║   ██║  ██╗██║   ██║   "
echo "  ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝        ╚═╝   ╚═╝  ╚═╝╚═╝   ╚═╝   "
echo -e "${N}"

# Έλεγχος αν ο port είναι ήδη σε χρήση
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1; then
  echo -e "${Y}⚠  Port $PORT ήδη σε χρήση — ανοίγω απευθείας τον browser...${N}"
  URL="http://localhost:$PORT"
else
  # Βρες διαθέσιμο server
  if command -v python3 &>/dev/null; then
    SERVER="python3 -m http.server $PORT"
    SERVER_NAME="Python 3"
  elif command -v python &>/dev/null; then
    SERVER="python -m SimpleHTTPServer $PORT"
    SERVER_NAME="Python 2"
  elif command -v npx &>/dev/null; then
    SERVER="npx --yes serve -l $PORT ."
    SERVER_NAME="Node/serve"
  else
    echo -e "${R}✗  Δεν βρέθηκε python3, python ή npx.${N}"
    echo -e "   Εγκατέστησε Python: ${C}sudo apt install python3${N}"
    read -p "   Πάτα Enter για έξοδο..."
    exit 1
  fi

  echo -e "${G}✓  Server: ${SERVER_NAME}${N}"
  echo -e "${G}✓  Directory: ${DIR}${N}"
  echo -e "${G}✓  URL: http://localhost:${PORT}${N}"
  echo ""

  # Εκκίνηση server στο background
  cd "$DIR"
  $SERVER >/tmp/promptkit-server.log 2>&1 &
  SERVER_PID=$!

  # Αποθήκευση PID για cleanup
  echo $SERVER_PID > /tmp/promptkit.pid

  # Περίμενε να ξεκινήσει
  echo -ne "${Y}  Εκκίνηση server"
  for i in {1..10}; do
    sleep 0.3
    echo -ne "."
    if curl -s "http://localhost:$PORT" >/dev/null 2>&1; then
      echo -e " έτοιμο!${N}"
      break
    fi
  done

  URL="http://localhost:$PORT"
fi

# Άνοιγμα browser
echo -e "\n${G}🌐 Άνοιγμα στον browser...${N}"

if command -v xdg-open &>/dev/null; then
  xdg-open "$URL" &
elif command -v google-chrome &>/dev/null; then
  google-chrome "$URL" &
elif command -v chromium-browser &>/dev/null; then
  chromium-browser "$URL" &
elif command -v firefox &>/dev/null; then
  firefox "$URL" &
else
  echo -e "${Y}  Δεν βρέθηκε browser. Άνοιξε χειροκίνητα: ${C}${URL}${N}"
fi

echo ""
echo -e "${C}  Πάτα Ctrl+C για τερματισμό του server.${N}"
echo ""

# Cleanup όταν τερματίσει
cleanup() {
  echo -e "\n${Y}  Τερματισμός PromptKit...${N}"
  if [ -f /tmp/promptkit.pid ]; then
    kill $(cat /tmp/promptkit.pid) 2>/dev/null
    rm /tmp/promptkit.pid
  fi
  echo -e "${G}  Γεια!${N}"
  exit 0
}
trap cleanup INT TERM

# Κράτα το script ζωντανό
wait
