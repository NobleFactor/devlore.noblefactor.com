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

### Quick Republish

```bash
bin/Publish-Site
```

This will prompt for Azure login if needed, build the site, and deploy to Azure. Each tool in `bin/` shows its
manual with `--help`.

### Setting up hosting

`bin/New-SiteHosting` creates a site's hosting from nothing: it runs `bin/New-AzureStaticWebApp` for the Azure
resources, then `bin/Set-GitHubRepository` for the repository's secrets, ruleset and settings. Each runs alone too.

### Automatic Deployment

Push to `develop` triggers automatic deployment via GitHub Actions.

## Azure Resources

Created 2026-01-18 in West US 2 region.

| Resource | Name | ID |
|----------|------|-----|
| Resource Group | `rg-devlore-site` | — |
| Static Web App | `devlore-noblefactor-com` | Standard tier |
| Entra ID App | `DevLore Site` | `4b23d94b-33f1-4934-ac08-4f9b219ff55b` |
| Tenant | Visual Studio Enterprise | `c31c4b20-38b6-4355-96d8-9ccde7e1ca71` |

**Site URL:** https://delightful-grass-0ac0a4c1e.6.azurestaticapps.net

### Commands Used to Create Resources

```bash
# Register resource provider (one-time)
az provider register --namespace Microsoft.Web

# Create resource group
az group create --name rg-devlore-site --location westus2

# Create Static Web App (Standard tier for auth)
az staticwebapp create \
  -n devlore-noblefactor-com \
  -g rg-devlore-site \
  -l westus2 \
  --sku Standard

# Create Entra ID app registration
az ad app create --display-name "DevLore Site" --sign-in-audience AzureADMyOrg

# Add redirect URI
az ad app update \
  --id 4b23d94b-33f1-4934-ac08-4f9b219ff55b \
  --web-redirect-uris "https://delightful-grass-0ac0a4c1e.6.azurestaticapps.net/.auth/login/aad/callback"

# Create client secret (store securely!)
az ad app credential reset \
  --id 4b23d94b-33f1-4934-ac08-4f9b219ff55b \
  --display-name "DevLore Site Secret"

# Configure app settings on Static Web App
az staticwebapp appsettings set \
  --name devlore-noblefactor-com \
  --resource-group rg-devlore-site \
  --setting-names "AAD_CLIENT_ID=<client-id>" "AAD_CLIENT_SECRET=<client-secret>"

# Get deployment token for GitHub Actions
az staticwebapp secrets list \
  -n devlore-noblefactor-com \
  -g rg-devlore-site \
  --query "properties.apiKey" -o tsv

# Set GitHub secret (run from repo directory)
gh secret set AZURE_STATIC_WEB_APPS_API_TOKEN --body "<token>"
```

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

public/
└── staticwebapp.config.json    # Azure SWA routing and auth config

bin/
├── Publish-Site                # Build and publish to production
├── Deploy-Site                 # Build and deploy using the SWA CLI
├── New-SiteHosting             # Create a site's whole hosting: the two below, in order
├── New-AzureStaticWebApp       # The resource group, Static Web App, sign-in and GitHub Actions principal
└── Set-GitHubRepository        # The repository's secrets, ruleset, merge settings and default branch

share/
├── man/man1/                   # Each tool's manual, which --help shows
└── bash-completion/completions/
```

## Authentication

The site is restricted to invited stakeholders via Microsoft Entra ID.

### Adding Stakeholders

1. Go to [Azure Portal](https://portal.azure.com)
2. Navigate to Static Web Apps → `devlore-noblefactor-com`
3. Click **Role management** → **Invite**
4. Enter stakeholder email, select "Azure Active Directory", assign role `authenticated`
