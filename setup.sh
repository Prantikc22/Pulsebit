#!/bin/bash
set -e

# Pulsebit One-Click VPS Setup Script
# This script installs Docker, clones Pulsebit, sets up .env, and starts the app.

# 1. Install Docker & Docker Compose if missing
if ! command -v docker &> /dev/null; then
  echo "Installing Docker..."
  curl -fsSL https://get.docker.com | sh
fi
if ! command -v docker compose &> /dev/null; then
  echo "Installing Docker Compose..."
  sudo apt-get install -y docker-compose-plugin
fi

# 2. Clone Pulsebit if not present
if [ ! -d "Pulsebit" ]; then
  git clone https://github.com/Prantikc22/Pulsebit.git
fi
cd Pulsebit/umami

# 3. Copy .env.example to .env if not present
if [ ! -f "../.env" ]; then
  cp ../.env.example ../.env
  echo "Please edit .env to set your APP_SECRET and any other settings."
fi

# 4. Build and start
sudo docker compose up --build -d

echo "\nPulsebit is running! Visit http://<your-vps-ip>:3000"
echo "If this is your first time, edit .env to set a secure APP_SECRET!"
