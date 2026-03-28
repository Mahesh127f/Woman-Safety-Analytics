#!/bin/bash
echo "================================================"
echo "  Women Safety Analytics - Setup and Launch"
echo "================================================"
echo ""

echo "[1/3] Installing Python dependencies..."
pip install -r requirements.txt
if [ $? -ne 0 ]; then
    echo "ERROR: pip install failed. Make sure Python 3 is installed."
    exit 1
fi

echo ""
echo "[2/3] Checking .env file..."
if [ ! -f .env ]; then
    echo "WARNING: .env file not found. Please edit .env with your Twilio credentials."
fi

echo ""
echo "[3/3] Starting Flask server..."
echo "  Open your browser at: http://127.0.0.1:5500"
echo "  Press Ctrl+C to stop the server."
echo ""
python app.py
