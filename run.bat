@echo off
echo ================================================
echo   Women Safety Analytics - Setup and Launch
echo ================================================
echo.

echo [1/3] Installing Python dependencies...
pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo ERROR: pip install failed. Make sure Python is installed.
    pause
    exit /b 1
)

echo.
echo [2/3] Checking .env file...
if not exist .env (
    echo WARNING: .env file not found! Creating template...
    copy nul .env
    echo TWILIO_ACCOUNT_SID=YOUR_TWILIO_ACCOUNT_SID >> .env
    echo TWILIO_AUTH_TOKEN=YOUR_TWILIO_AUTH_TOKEN >> .env
    echo TWILIO_FROM_NUMBER=YOUR_TWILIO_PHONE_NUMBER >> .env
    echo EMERGENCY_CONTACT=+919876543210 >> .env
    echo FLASK_PORT=5500 >> .env
)

echo.
echo [3/3] Starting Flask server...
echo  Open your browser at: http://127.0.0.1:5500
echo  Press Ctrl+C to stop the server.
echo.
python app.py
pause
