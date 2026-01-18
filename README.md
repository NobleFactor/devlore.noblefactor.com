# devlore.noblefactor.com

Marketing site for the DevLore suite: **writ**, **lore**, and the **registry**.

## Development

Requires Node.js 20+.

```bash
npm install
npm run dev      # Start dev server at localhost:4321
npm run build    # Build to dist/
npm run preview  # Preview built site
```

## Deployment

Deployed via Azure Static Web Apps with Microsoft Entra ID authentication (stakeholder-restricted access).

See [DEPLOYMENT.md](./DEPLOYMENT.md) for complete setup instructions.

### Quick Deploy

```bash
# Initial setup (run once)
./scripts/setup-azure.sh

# Deploy updates
./scripts/deploy.sh
```

Push to `main` also triggers automatic deployment via GitHub Actions.

## Structure

```text
src/
├── layouts/
│   └── BaseLayout.astro        # Shared page layout with nav
├── pages/
│   ├── index.astro             # Main landing page
│   ├── registry.astro          # Registry product page
│   ├── lore.astro              # Lore product page
│   └── writ.astro              # Writ product page
└── components/
    ├── HeroDiagram.astro       # ASCII-style architecture diagram
    ├── RegistryIcon.astro      # SVG icon for Registry
    ├── LoreIcon.astro          # SVG icon for Lore
    ├── WritIcon.astro          # SVG icon for Writ
    └── DocsLinks.astro         # Documentation links component

scripts/
├── setup-azure.sh              # Initial Azure resource creation
└── deploy.sh                   # Build and deploy to Azure

staticwebapp.config.json        # Azure SWA routing and auth config
```

## Authentication

The site is restricted to invited stakeholders via Microsoft Entra ID. Users must be invited through the Azure Portal (Static Web App → Role management → Invite).
