# Women Safety Analytics
### Protecting Women from Safety Threats
**Amity University — Integrated Project, Semester 5**
Yatish Jain (A2305323026) · Ankit Kumar (A2305323035) · Lakshay Vir Singh (A2305323071)

---

## Complete File List

```
women-safety/
├── app.py              ← Flask backend (all API routes)
├── database.py         ← Saves incident reports to reports.json
├── requirements.txt    ← Python dependencies (pip install)
├── .env                ← Your Twilio credentials go here
├── run.bat             ← Windows: double-click to run
├── run.sh              ← Mac/Linux: bash run.sh
├── README.md           ← This file
└── templates/
    └── index.html      ← Complete 10-screen webapp (frontend)
```

---

## All 10 Features Included

| # | Feature | Technology | Status |
|---|---------|-----------|--------|
| 1 | Gender Detection | DeepFace + OpenCV + Webcam | ✅ Complete |
| 2 | Live Location Map | Leaflet.js + Browser GPS | ✅ Complete |
| 3 | SOS Emergency Alert | Twilio SMS API | ✅ Complete |
| 4 | Danger Zone Heatmap | Leaflet.js circles | ✅ Complete |
| 5 | Safe Route Planner | Leaflet.js polylines | ✅ Complete |
| 6 | Analytics Dashboard | Custom bar charts + stats | ✅ Complete |
| 7 | Emotion Detection AI | DeepFace (same webcam) | ✅ Complete |
| 8 | Community Safety Feed | Real-time post/read | ✅ Complete |
| 9 | Trusted Contacts | Add/notify contacts | ✅ Complete |
| 10 | Incident Reporting | Saves to reports.json | ✅ Complete |

---

## Setup Instructions

### Prerequisites
- Python 3.8 or higher installed
- Internet connection (for map tiles on first load)
- A webcam (for gender/emotion detection)

### Step 1 — Install dependencies

**Windows:**
```
Double-click run.bat
```

**Mac / Linux:**
```bash
bash run.sh
```

**Or manually:**
```bash
pip install -r requirements.txt
```

---

### Step 2 — Configure Twilio for SOS SMS

1. Sign up FREE at https://www.twilio.com (no credit card needed)
2. From your Twilio console, copy:
   - Account SID
   - Auth Token
   - Your Twilio phone number
3. Open the `.env` file and fill in:

```
TWILIO_ACCOUNT_SID=ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
TWILIO_AUTH_TOKEN=your_auth_token_here
TWILIO_FROM_NUMBER=+1415XXXXXXX
EMERGENCY_CONTACT=+919876543210
```

> **Note:** On the free trial, you can only send SMS to verified numbers.
> Go to Twilio Console → Phone Numbers → Verified Caller IDs to add numbers.

---

### Step 3 — Run the app

```bash
python app.py
```

You will see:
```
==================================================
  Women Safety Analytics — Backend
  http://127.0.0.1:5500
  Twilio configured: True
==================================================
```

---

### Step 4 — Open in browser

```
http://127.0.0.1:5500
```

Allow **camera** and **location** permissions when the browser asks.

---

## API Endpoints

| Route | Method | Description |
|-------|--------|-------------|
| `/` | GET | Serve the main webapp |
| `/detect` | POST | DeepFace gender + emotion detection |
| `/sos` | POST | Send Twilio SOS SMS |
| `/report` | POST | Save incident report to database |
| `/reports` | GET | Fetch recent reports |
| `/health` | GET | Check if backend + Twilio are working |

---

## Tech Stack (All Free)

| Component | Technology | Cost |
|-----------|-----------|------|
| Gender & Emotion AI | DeepFace (Python) | Free |
| Webcam capture | OpenCV | Free |
| Interactive Map | Leaflet.js + OpenStreetMap | Free |
| GPS Location | Browser Geolocation API | Free |
| SOS SMS | Twilio API | Free trial ($15.50) |
| Backend | Flask (Python) | Free |
| Frontend | HTML + CSS + JavaScript | Free |
| Database | JSON file (database.py) | Free |

---

## Common Errors & Fixes

| Error | Fix |
|-------|-----|
| `ModuleNotFoundError: deepface` | Run `pip install deepface` |
| `Camera not working` | Allow camera in browser settings |
| `GPS not working` | Allow location in browser settings |
| `SOS: Twilio not configured` | Fill in .env with your Twilio credentials |
| `SOS: not a verified number` | Add the number in Twilio Console → Verified Caller IDs |
| `Port already in use` | Change `FLASK_PORT=5501` in .env |

---

## Project Report Reference
- Abstract: AI-powered emergency response using DeepFace, Geolocation, Twilio
- Methodology: Data collection → Model integration → System testing
- Modules: Gender Detection, Location Tracking, SOS Alert
