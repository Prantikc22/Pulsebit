# Welcome to Pulsebit Self-Hosted Analytics!

Thank you for purchasing Pulsebit. This guide will help you deploy Pulsebit on your own VPS or server with a single script.

---

## 🚀 One-Click Setup (Recommended)
1. **Upload or copy the `setup.sh` script to your VPS.**
2. **Run the script:**
   ```sh
   bash setup.sh
   ```
   This will:
   - Install Docker and Docker Compose (if missing)
   - Clone the latest Pulsebit code
   - Set up your environment file
   - Build and start Pulsebit and Postgres

3. **Edit your `.env` file** (required!) and set a secure `APP_SECRET`.
4. **Visit** `http://<your-vps-ip>:3000` to access Pulsebit.

---

## 🔑 How do I get this package?
- After purchase, you will receive a download link or GitHub access to this package containing:
  - The full `/umami` directory (with Dockerfile, docker-compose.yml, setup.sh, etc.)
  - `.env.example` template
  - This README

## 🖱️ What about the "button"?
- If you use a customer portal, you can provide a "Deploy to VPS" or "Download Self-Host Package" button.
- The button triggers a download of this package or gives GitHub access.
- User uploads the package or script to their VPS and runs `setup.sh`.

---

## 🛡️ Security & Support
- Always change `APP_SECRET` in `.env` before using in production.
- For help, consult the included `README-docker.md` or contact support.

---

## 🖥️ Mac & Windows Users

**Mac:**
- Install [Docker Desktop for Mac](https://www.docker.com/products/docker-desktop/).
- Open Terminal, navigate to the project folder, and run:
  ```sh
  cp .env.example .env
  # (edit .env as needed)
  docker compose up --build -d
  ```
- Or, run the one-click script:
  ```sh
  bash setup.sh
  ```

**Windows:**
- Install [Docker Desktop for Windows](https://www.docker.com/products/docker-desktop/).
- Use Git Bash or WSL for bash scripts, or PowerShell for manual commands:
  ```powershell
  Copy-Item .env.example .env
  # (edit .env as needed)
  docker compose up --build -d
  ```
- Or, run the one-click script in Git Bash/WSL:
  ```sh
  bash setup.sh
  ```

---

## 🌍 Accessing Pulsebit from the Internet (Custom Domain)

1. **Point your domain to your VPS/server IP:**
   - Log in to your domain registrar (GoDaddy, Namecheap, Cloudflare, etc).
   - Create an "A" record for your domain (e.g., `analytics.yourdomain.com`) pointing to your VPS public IP.
2. **(Optional but recommended) Set up HTTPS:**
   - Use a reverse proxy like Nginx or Caddy on your VPS to proxy requests to Pulsebit (port 3000) and handle SSL certificates (Let’s Encrypt).
   - Example Nginx config is available in `README-docker.md`.
3. **Open firewall ports:**
   - Make sure port 80 (HTTP) and 443 (HTTPS) are open on your VPS.
   - If you want to use Pulsebit directly (not behind a proxy), open port 3000 as well (not recommended for production).
4. **Access Pulsebit:**
   - Visit `https://analytics.yourdomain.com` (or your chosen subdomain) in your browser.

---

Enjoy privacy-first analytics with Pulsebit!
