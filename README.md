# PromptKit ✨

> Εργαλείο δημιουργίας και διαχείρισης prompts για Claude — PWA εφαρμογή

[![PWA Ready](https://img.shields.io/badge/PWA-ready-7c6aff?style=flat-square&logo=pwa)](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps)
[![Offline](https://img.shields.io/badge/offline-first-3dffc3?style=flat-square)](https://developer.chrome.com/docs/workbox/caching-strategies-overview/)
[![No dependencies](https://img.shields.io/badge/dependencies-none-ff7c6a?style=flat-square)](package.json)
[![License: MIT](https://img.shields.io/badge/license-MIT-6ab8ff?style=flat-square)](LICENSE)

---

## 🚀 Live Demo

**[promptkit.github.io/promptkit](https://your-username.github.io/promptkit/)**

> Αντικατέστησε το `your-username` με το GitHub username σου μετά το deploy.

---

## 📸 Features

| Feature | Περιγραφή |
|--------|-----------|
| 📝 **Templates** | 11 έτοιμα templates για PWA, UI/UX, Debugging, Φυσικές Προσομοιώσεις |
| ⚙️ **Παραμετροποίηση** | Δυναμικές `{{μεταβλητές}}` με live preview |
| ✨ **Improve with Claude** | Άνοιγμα στο claude.ai με meta-prompt βελτίωσης |
| 📋 **History** | Αποθήκευση έως 100 prompts στο localStorage |
| 📦 **Offline-first** | Service Worker με cache-first στρατηγική |
| 📲 **Installable** | Εγκατάσταση ως native app σε desktop & mobile |

---

## 🗂️ Templates

### PWA / Frontend
- **New PWA App** — Δημιουργία πλήρους PWA από το μηδέν
- **Βελτίωση UI** — Αναβάθμιση υπάρχουσας εφαρμογής
- **Service Worker** — Cache strategies & offline support

### UI/UX Design
- **Component Design** — HTML/CSS components με dark mode
- **Dashboard Layout** — CSS Grid dashboards με animations

### Debugging
- **Bug Analysis** — Root cause analysis & διόρθωση
- **Performance Fix** — Bottleneck analysis & optimization

### Προσομοιώσεις Φυσικής
- **Physics Simulation** — 2D Canvas με gravity, friction, collisions
- **Data Visualization** — Interactive SVG/Canvas charts
- **Game / Interactive** — Canvas game με state machine

### Γενικό
- **Code Review** — Αναλυτικό review με βαθμολογία
- **Refactor** — DRY, patterns, clean code

---

## 🛠️ Τοπική εκτέλεση (Linux)

```bash
# Clone
git clone https://github.com/your-username/promptkit.git
cd promptkit

# Δώσε δικαίωμα εκτέλεσης (μόνο την πρώτη φορά)
chmod +x launch.sh

# Εκκίνηση
./launch.sh
```

Το `launch.sh` ξεκινά αυτόματα Python HTTP server στο port `8371` και ανοίγει τον browser.

**Απαιτήσεις:** Python 3 (προεγκατεστημένο σε σχεδόν όλες τις Linux διανομές)

---

## 🌐 Deploy στο GitHub Pages

1. Fork ή clone το repo
2. Settings → Pages → Source: `main` branch → `/ (root)`
3. Η εφαρμογή είναι διαθέσιμη στο `https://your-username.github.io/promptkit/`

---

## 📁 Δομή αρχείων

```
promptkit/
├── index.html      # Η εφαρμογή (single-file, no build step)
├── manifest.json   # PWA manifest
├── sw.js           # Service Worker (offline support)
├── launch.sh       # Linux launcher script
├── icon-192.svg    # PWA icon 192×192
├── icon-512.svg    # PWA icon 512×512
└── README.md       # Αυτό το αρχείο
```

---

## ✨ Improve with Claude

Το κουμπί **✨ Improve with Claude** ανοίγει modal με 3 λειτουργίες:

- **Βελτίωση prompt** — Στέλνει meta-prompt στον Claude για βελτιστοποίηση
- **Αποστολή prompt** — Στέλνει το τελικό prompt απευθείας στο claude.ai
- **Εξήγηση στρατηγικής** — Ανάλυση των prompting τεχνικών που χρησιμοποιούνται

---

## 🧩 Προσθήκη custom template

Άνοιξε το `index.html` και πρόσθεσε στο array `TEMPLATES`:

```javascript
{
  id: 'custom1',
  cat: 'gen',           // pwa | ui | debug | sim | gen
  name: 'Το template μου',
  desc: 'Σύντομη περιγραφή',
  tags: ['tag1', 'tag2'],
  template: `Κείμενο prompt με {{μεταβλητή_1}} και {{μεταβλητή_2}}.`,
  vars: ['μεταβλητή_1', 'μεταβλητή_2']
}
```

---

## 📄 License

MIT — ελεύθερο για προσωπική και εμπορική χρήση.
