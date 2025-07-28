# Pulsebit Docker Deployment Guide

This guide explains how to run Pulsebit (self-hosted analytics SaaS) with Docker and Docker Compose for easy deployment on any VPS or server.

---

## Quick Start

1. **Clone the repository:**
   ```sh
   git clone https://github.com/Prantikc22/Pulsebit.git
   cd Pulsebit/umami
   ```

2. **Copy the environment template:**
   ```sh
   cp ../.env.example .env
   # Edit .env as needed (set APP_SECRET to a secure value!)
   ```

3. **Build and start Pulsebit + Postgres:**
   ```sh
   docker compose up --build -d
   ```
   - Pulsebit will be available at http://localhost:3000
   - Database data is persisted in the `pulsebit-db-data` Docker volume.

---

## Environment Variables
See `.env.example` for all required and optional variables. At minimum, set:
- `DATABASE_URL` (default works for included Postgres)
- `APP_SECRET` (change for production!)

---

## Stopping & Restarting
- Stop: `docker compose down`
- Restart: `docker compose up -d`

## Database Backups
- The database is stored in the Docker volume `pulsebit-db-data`.
- To backup: `docker run --rm -v pulsebit-db-data:/data busybox tar czf - /data > backup.tar.gz`

---

## Production Notes
- Change `APP_SECRET` to a secure random string!
- Set up HTTPS (reverse proxy recommended, e.g. Nginx, Caddy).
- For custom domains, configure your VPS DNS and proxy.
- For multi-tenancy, configure Pulsebit as needed (see main docs).

---

## Troubleshooting
- Check logs: `docker compose logs -f pulsebit`
- If the app doesn't start, ensure your `.env` is correct and `APP_SECRET` is set.
- For help, open an issue on the GitHub repo.

---

**Enjoy your self-hosted Pulsebit analytics!**
