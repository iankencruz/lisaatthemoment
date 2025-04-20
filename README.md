# lisaatthemoment 🍜📸

A modern food recipe and blogging platform built with Go, HTMX, and Tailwind.  
Designed for a modular, page-builder style editing experience — think Squarespace for creatives.

---

## 🧠 Project Overview

**lisaatthemoment** is a visual-first platform for publishing beautifully designed recipes, blog posts, and media-driven content. It combines the flexibility of block-based editing with the performance of a custom backend, designed for creatives, foodies, and photographers.

---

## 🏗️ Tech Stack

- **Backend**: Go 1.22, HTMX
- **Database**: PostgreSQL
- **Migrations**: [Goose](https://github.com/pressly/goose)
- **Templating**: Go Templates + Tailwind CSS
- **Frontend Dynamic UI**: HTMX + AlpineJS (optional)
- **Storage**: AWS S3 or local (configurable)
- **Static Assets + Templates**: Embedded via Go 1.16+ `embed` package
- **Deployment**: Docker + Caddy2

---

## 📁 Project Structure

```bash
lisaatthemoment/
├── cmd/
│   └── app/
│       └── main.go                # Single entry point
├── internal/
│   ├── app/                       # Dependency injection via Application struct
│   ├── routes/                    # Route registration
│   ├── handlers/                 # Feature-specific HTTP handlers
│   ├── models/                    # DB models
│   ├── repositories/              # Data access layer
│   ├── services/                  # Business logic layer
│   ├── db/
│   │   ├── migrations/            # Goose migration files
│   │   └── db.go                  # DB connection and bootstrap
│   └── templates/                 # Template loading logic
├── ui/
│   ├── embed.go                   # Embeds templates + static for Go
│   ├── templates/                 # Go HTML templates
│   └── static/                    # CSS, JS, fonts, etc.
├── .env
├── go.mod
├── Dockerfile
└── README.md

```
