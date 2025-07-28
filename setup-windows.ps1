# Pulsebit Windows Setup Helper
# Run this in PowerShell as Administrator

# 1. Check Docker Desktop
if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
    Write-Host "Docker Desktop is not installed. Please install it from https://www.docker.com/products/docker-desktop/"
    exit 1
}

# 2. Copy .env.example to .env if needed
if (-not (Test-Path "../.env")) {
    Copy-Item "../.env.example" "../.env"
    Write-Host ".env file created. Please edit it to set your APP_SECRET and any other settings."
}

# 3. Build and start Pulsebit
Write-Host "Starting Pulsebit with Docker Compose..."
docker compose up --build -d

Write-Host "Pulsebit is running! Visit http://localhost:3000 or http://<your-vps-ip>:3000"
