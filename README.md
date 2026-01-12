# devlore.noblefactor.com

Landing page for the DevLore suite.

## Development

Requires Node.js 18+.

```bash
npm install
npm run dev      # Start dev server at localhost:4321
npm run build    # Build to dist/
npm run preview  # Preview built site
```

## Deployment

Deployed via Azure Static Web Apps. Push to `main` triggers deployment.

## Structure

```
src/
├── layouts/
│   └── BaseLayout.astro    # Shared page layout
├── pages/
│   └── index.astro         # Landing page
└── components/             # Reusable components (future)

public/
└── favicon.svg             # Site icon
```
