# Elite Packages Portfolio

Single-page company website for **Elite Packages**, a rotogravure and 7-color flexographic flexible packaging manufacturer in Lahore, Pakistan. It works as the company's online identity and a quote request channel.

## Features

- Dark, glass-style design with champagne gold and electric teal accents
- Interactive pouch explorer (stand-up, sachet, flat-bottom, side gusset, spouted, rollstock)
- Finish switcher (matte, gloss, spot) and a pouch layer cross-section
- Industries strip, materials, 5-step production timeline, and image gallery
- Quote form that opens WhatsApp or email with the request pre-filled
- English / Urdu toggle (RTL-ready structure)
- Sticky WhatsApp button on mobile, glowing cursor on desktop
- Respects `prefers-reduced-motion`
- Below-the-fold sections are lazy-loaded, so the first load stays small

## Tech stack

React 19, TypeScript, Vite, Tailwind CSS 4, lucide-react.

## Getting started

Requires Node.js 20 or newer.

```bash
npm install
npm run dev        # http://localhost:3000
```

| Command | What it does |
| --- | --- |
| `npm run dev` | Start the dev server |
| `npm run build` | Production build into `dist/` |
| `npm run preview` | Serve the production build locally |
| `npm run typecheck` | TypeScript check (no output files) |

No environment variables are needed. See `.env.example`.

## Project structure

```
src/
  App.tsx                 Page layout, language state, lazy-loaded sections
  main.tsx                Entry point
  index.css               Tailwind theme tokens, glass and animation styles
  data/
    companyData.ts        All company text, products, process, contact details (EN + UR)
  components/
    layout/               Header, Footer, StickyMobileBar
    sections/             Hero, Products, Industries, Capabilities, Materials,
                          Process, Gallery, About, Contact
    effects/              GlowingCursor, AmbientBlooms
    diagrams/             PouchDiagrams (SVG pouch drawings)
docs/ISSUES.md           Starter backlog (see "Tracking work")
```

## Editing content

Almost everything you will want to change lives in `src/data/companyData.ts`:

- Company name, tagline, phone, WhatsApp, email, address, hours
- Products, industries, materials, process steps
- Urdu text sits next to each English field

**Before launch, replace the placeholder contact details** in `companyData.ts` and in the structured data block of `index.html` (address, phone, email). The gallery also uses placeholder image slots until real photos are added.

## Deploying

`npm run build` produces a static site in `dist/`. Upload it to any static host (Netlify, Vercel, Cloudflare Pages, GitHub Pages, or your own server).

## Tracking work

A starter backlog is in `docs/ISSUES.md`. Issue templates for bugs and features are in `.github/ISSUE_TEMPLATE/`. To create the backlog on GitHub in one go:

```bash
bash scripts/create-issues.sh OWNER/REPO
```

This needs the [GitHub CLI](https://cli.github.com) (`gh auth login` first).
