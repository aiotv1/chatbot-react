#!/bin/bash

echo "Installing dependencies..."
npm install

echo ""
echo "Installing client dependencies..."
cd client
npm install
cd ..

echo ""
echo "Starting the application..."
echo "Backend will run on http://localhost:5000"
echo "Frontend will run on http://localhost:3000"
echo ""

# Start backend in background
npm start &

# Wait a bit
sleep 3

# Start frontend
cd client
npm start

