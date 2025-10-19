@echo off
echo Installing dependencies...
call npm install

echo.
echo Installing client dependencies...
cd client
call npm install
cd ..

echo.
echo Starting the application...
echo Backend will run on http://localhost:5000
echo Frontend will run on http://localhost:3000
echo.

start cmd /k "npm start"
timeout /t 3
start cmd /k "cd client && npm start"

echo.
echo Application is starting...
echo Please wait for both servers to start.

