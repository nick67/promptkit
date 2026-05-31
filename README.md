# PromptKit ✨

> Εργαλείο δημιουργίας και διαχείρισης prompts για Claude — PWA εφαρμογή

[![PWA Ready](https://img.shields.io/badge/PWA-ready-7c6aff?style=flat-square)](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps)
[![Offline](https://img.shields.io/badge/offline-first-3dffc3?style=flat-square)](https://developer.chrome.com/docs/workbox/caching-strategies-overview/)
[![No dependencies](https://img.shields.io/badge/dependencies-none-ff7c6a?style=flat-square)](.)
[![License: MIT](https://img.shields.io/badge/license-MIT-6ab8ff?style=flat-square)](LICENSE)

---

## 🚀 Live Demo

**[https://YOUR-USERNAME.github.io/promptkit/](https://your-username.github.io/promptkit/)**

> Αντικατέστησε το `YOUR-USERNAME` με το GitHub username σου.

---

## ✨ Features

| Feature | Περιγραφή |
|--------|-----------|
| 📝 **13 Templates** | PWA, UI/UX, Debugging, Φυσική, Χημεία, Βιολογία, Γενικό |
| ⚙️ **Παραμετροποίηση** | Δυναμικές `{{μεταβλητές}}` με live preview και hints |
| ➕ **Extras** | Ελεύθερο κείμενο, Links, Νόμοι/τύποι, Γραφικές παραστάσεις, Custom vars |
| 📌 **Οργάνωση cards** | Drag & drop αναδιάταξη, pin αγαπημένων, απόκρυψη |
| 🌙 **Dark / Light** | Theme toggle με αποθήκευση επιλογής |
| ✨ **Improve with Claude** | Άνοιγμα στο claude.ai με meta-prompt βελτίωσης |
| 📋 **History** | Αποθήκευση έως 100 prompts στο localStorage |
| 📦 **Offline-first** | Service Worker, εγκαταστάσιμο ως desktop app |

---

## 🗂️ Templates

### PWA / Frontend
- **New PWA App** — Δημιουργία πλήρους PWA από το μηδέν
- **Βελτίωση UI** — HTML + CSS ξεχωριστά, με οδηγίες
- **Service Worker** — Cache strategies & offline support

### UI/UX Design
- **Component Design** — HTML/CSS components με dark mode
- **Dashboard Layout** — CSS Grid dashboards με animations

### Debugging
- **Bug Analysis** — Root cause analysis & διόρθωση
- **Performance Fix** — Bottleneck analysis & optimization

### Προσομοιώσεις
- **Physics Simulation** — 2D Canvas με gravity, friction, collisions
- **Data Visualization** — Interactive SVG/Canvas charts
- **Game / Interactive** — Canvas game με state machine
- **Χημική Αντίδραση** — Μόρια, Brownian motion, collision detection
- **Βιολογικό Μοντέλο** — SIR, κυτταρική διαίρεση, διαφορικές εξισώσεις

### Γενικό
- **Code Review** — Αναλυτικό review με βαθμολογία
- **Refactor** — DRY, patterns, clean code

---

## 🛠️ Τοπική εκτέλεση (Linux)

```bash
# Clone
git clone https://github.com/YOUR-USERNAME/promptkit.git
cd promptkit

# Δώσε δικαίωμα εκτέλεσης (μόνο την πρώτη φορά)
chmod +x launch.sh

# Εκκίνηση — ανοίγει αυτόματα τον browser
./launch.sh
```

**Απαιτήσεις:** Python 3 (προεγκατεστημένο σε σχεδόν όλες τις Linux διανομές)

---

## 🌐 Deploy στο GitHub Pages

1. Ανέβασε όλα τα αρχεία στο repository (drag & drop στο github.com)
2. Πρόσθεσε κενό αρχείο `.nojekyll` (Add file → Create new file)
3. Settings → Pages → Source: `main` branch → `/(root)` → Save
4. Σε ~1 λεπτό: `https://YOUR-USERNAME.github.io/promptkit/`

---

## 📁 Αρχεία

```
promptkit/
├── index.html       # Η εφαρμογή (single-file, no build step)
├── manifest.json    # PWA manifest
├── sw.js            # Service Worker (offline support)
├── launch.sh        # Linux launcher script
├── icon-192.svg     # PWA icon
├── icon-512.svg     # PWA icon
├── .nojekyll        # Απενεργοποίηση Jekyll στο GitHub Pages
├── README.md
└── LICENSE
```

---

## 🧩 Προσθήκη custom template

Στο `index.html`, πρόσθεσε στο array `TEMPLATES`:

```javascript
{
  id: 'custom1',
  cat: 'gen',           // pwa | ui | debug | sim | gen
  name: 'Το template μου',
  desc: 'Σύντομη περιγραφή',
  tags: ['tag1', 'tag2'],
  template: `Κείμενο με {{μεταβλητή_1}} και {{μεταβλητή_2}}.`,
  vars: ['μεταβλητή_1', 'μεταβλητή_2']
}
```

Και στο `HINTS`:
```javascript
μεταβλητή_1: 'π.χ. παράδειγμα τιμής',
```

---

## 📄 License

MIT — ελεύθερο για προσωπική και εμπορική χρήση.
