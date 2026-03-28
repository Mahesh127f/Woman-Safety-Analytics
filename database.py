"""
database.py — Simple file-based storage for incident reports.
In a production app you would swap this for SQLite / PostgreSQL.
"""
import json
import os
from datetime import datetime

DB_FILE = "reports.json"


def _load():
    if not os.path.exists(DB_FILE):
        return []
    with open(DB_FILE, "r") as f:
        return json.load(f)


def _save(data):
    with open(DB_FILE, "w") as f:
        json.dump(data, f, indent=2)


def save_report(report_type, location, description, lat, lng, anonymous=True):
    """Save an incident report and return its ID."""
    reports = _load()
    report_id = f"RPT{datetime.now().strftime('%Y%m%d%H%M%S')}{len(reports):03d}"
    record = {
        "id":          report_id,
        "type":        report_type,
        "location":    location,
        "description": description,
        "lat":         lat,
        "lng":         lng,
        "anonymous":   anonymous,
        "timestamp":   datetime.now().isoformat(),
    }
    reports.append(record)
    _save(reports)
    return report_id


def get_all_reports():
    """Return all saved reports."""
    return _load()


def get_recent_reports(n=10):
    """Return the n most recent reports."""
    return _load()[-n:]
