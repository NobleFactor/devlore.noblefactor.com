# DevLore Website Deployment to Azure

This guide covers deploying the DevLore marketing site to Azure with restricted access for stakeholders only.

## Architecture Overview

```text
┌─────────────────────────────────────────────────────────────────────┐
│                        Azure Static Web Apps                         │
├─────────────────────────────────────────────────────────────────────┤
│                                                                       │
│  ┌──────────────┐    ┌──────────────┐    ┌──────────────────────┐   │
│  │   GitHub     │───>│   Build      │───>│   CDN Distribution   │   │
│  │   Actions    │    │   (Astro)    │    │   (Global Edge)      │   │
│  └──────────────┘    └──────────────┘    └──────────────────────┘   │
│                                                   │                   │
│                                                   ▼                   │
│                             ┌─────────────────────────────────────┐  │
│                             │     Microsoft Entra ID Auth         │  │
│                             │   (Stakeholder Access Control)      │  │
│                             └─────────────────────────────────────┘  │
│                                                                       │
└─────────────────────────────────────────────────────────────────────┘
```

## Prerequisites

- Azure subscription (you have one)
- Azure CLI installed (`brew install azure-cli` on macOS)
- GitHub repository for this website
- Custom domain: `devlore.noblefactor.com` (optional)

## GitHub Secrets

Secrets are configured across two repositories to enable automated deployments.

### devlore.noblefactor.com

| Secret | Purpose | Created |
|--------|---------|---------|
| `AZURE_STATIC_WEB_APPS_API_TOKEN` | Authenticate deployments to Azure Static Web Apps | 2026-01-18 |
| `AZURE_CREDENTIALS` | Azure CLI login for custom domain configuration | 2026-01-27 |

**AZURE_CREDENTIALS** uses service principal `github-devlore-site-deploy` with Contributor role scoped to `rg-devlore-site`.

### devlore-cli

| Secret | Purpose | Created |
|--------|---------|---------|
| `SITE_DEPLOY_TOKEN` | Push release artifacts to devlore.noblefactor.com repo | 2026-01-24 |

To regenerate these secrets, see the Azure CLI commands in the sections below.

## Option A: Azure Static Web Apps (Recommended)

Best for: Simple deployment, built-in auth, free tier available.

### Step 1: Install Azure CLI and Login

```bash
# Install Azure CLI (if not installed)
brew install azure-cli

# Login to Azure
az login

# Verify subscription
az account show
```

### Step 2: Create Static Web App via Azure Portal

1. Go to [Azure Portal](https://portal.azure.com)
2. Search for "Static Web Apps" → Create
3. Configure:
   - **Subscription**: Your subscription
   - **Resource Group**: Create new → `rg-devlore-site`
   - **Name**: `devlore-noblefactor-com`
   - **Plan type**: Free (or Standard for custom auth)
   - **Region**: Choose closest to stakeholders
   - **Source**: GitHub
   - **Organization**: NobleFactor
   - **Repository**: devlore.noblefactor.com
   - **Branch**: main
   - **Build Presets**: Custom
   - **App location**: `/`
   - **Output location**: `dist`

4. Click "Review + Create" → "Create"

### Step 3: Configure Build Settings

Azure will create a GitHub Actions workflow. Update `.github/workflows/azure-static-web-apps-*.yml`:

```yaml
name: Azure Static Web Apps CI/CD

on:
  push:
    branches:
      - main
  pull_request:
    types: [opened, synchronize, reopened, closed]
    branches:
      - main

jobs:
  build_and_deploy_job:
    if: github.event_name == 'push' || (github.event_name == 'pull_request' && github.event.action != 'closed')
    runs-on: ubuntu-latest
    name: Build and Deploy Job
    steps:
      - uses: actions/checkout@v4
        with:
          submodules: true
          lfs: false

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '20'
          cache: 'npm'

      - name: Install dependencies
        run: npm ci

      - name: Build Astro site
        run: npm run build

      - name: Deploy to Azure Static Web Apps
        uses: Azure/static-web-apps-deploy@v1
        with:
          azure_static_web_apps_api_token: ${{ secrets.AZURE_STATIC_WEB_APPS_API_TOKEN }}
          repo_token: ${{ secrets.GITHUB_TOKEN }}
          action: "upload"
          app_location: "/"
          output_location: "dist"
          skip_app_build: true  # We already built above

  close_pull_request_job:
    if: github.event_name == 'pull_request' && github.event.action == 'closed'
    runs-on: ubuntu-latest
    name: Close Pull Request Job
    steps:
      - name: Close Pull Request
        uses: Azure/static-web-apps-deploy@v1
        with:
          azure_static_web_apps_api_token: ${{ secrets.AZURE_STATIC_WEB_APPS_API_TOKEN }}
          action: "close"
```

## Restricting Access to Stakeholders

### Method 1: Azure Static Web Apps Authentication (Standard Plan Required)

Create `staticwebapp.config.json` in the repository root:

```json
{
  "routes": [
    {
      "route": "/*",
      "allowedRoles": ["authenticated"]
    }
  ],
  "responseOverrides": {
    "401": {
      "redirect": "/.auth/login/aad",
      "statusCode": 302
    }
  },
  "auth": {
    "identityProviders": {
      "azureActiveDirectory": {
        "registration": {
          "openIdIssuer": "https://login.microsoftonline.com/<YOUR_TENANT_ID>/v2.0",
          "clientIdSettingName": "AAD_CLIENT_ID",
          "clientSecretSettingName": "AAD_CLIENT_SECRET"
        }
      }
    }
  },
  "globalHeaders": {
    "X-Content-Type-Options": "nosniff",
    "X-Frame-Options": "DENY",
    "Content-Security-Policy": "default-src 'self'; style-src 'self' 'unsafe-inline'; script-src 'self'"
  }
}
```

### Method 2: Invite-Only Access (Simpler)

For the Standard plan, you can use the built-in invitation system:

1. In Azure Portal → Your Static Web App → **Role management**
2. Click **Invite**
3. Add stakeholder email addresses
4. Assign role: `authenticated` or create custom roles

Update `staticwebapp.config.json`:

```json
{
  "routes": [
    {
      "route": "/*",
      "allowedRoles": ["authenticated"]
    }
  ],
  "responseOverrides": {
    "401": {
      "statusCode": 302,
      "redirect": "/.auth/login/aad"
    }
  }
}
```

### Step 4: Register Microsoft Entra ID Application

For custom authentication (Standard plan):

1. Go to [Microsoft Entra ID](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/Overview)
2. **App registrations** → **New registration**
3. Configure:
   - **Name**: `DevLore Site`
   - **Supported account types**: Accounts in this organizational directory only
   - **Redirect URI**: Web → `https://<your-site>.azurestaticapps.net/.auth/login/aad/callback`
4. After creation, note:
   - **Application (client) ID**
   - **Directory (tenant) ID**
5. **Certificates & secrets** → **New client secret** → Copy the value
6. **Authentication** → Add redirect URIs for custom domain if needed

### Step 5: Configure App Settings

In Azure Portal → Static Web App → **Configuration** → **Application settings**:

| Name | Value |
|------|-------|
| `AAD_CLIENT_ID` | Your Application (client) ID |
| `AAD_CLIENT_SECRET` | Your client secret value |

## Option B: Azure CLI Deployment

For automated/scripted deployment:

```bash
#!/bin/bash
# deploy-azure.sh

set -e

RESOURCE_GROUP="rg-devlore-site"
LOCATION="westus2"
APP_NAME="devlore-noblefactor-com"

# Create resource group
az group create \
  --name $RESOURCE_GROUP \
  --location $LOCATION

# Create Static Web App (requires GitHub integration via portal or API)
# The CLI method is limited; portal is easier for initial setup

# Alternative: Deploy to existing Static Web App
# Build locally first
npm run build

# Deploy using SWA CLI
npm install -g @azure/static-web-apps-cli
swa login
swa deploy ./dist --app-name $APP_NAME
```

## Custom Domain Setup

### Step 1: Add Custom Domain in Azure

1. Azure Portal → Static Web App → **Custom domains**
2. Click **Add** → Enter: `devlore.noblefactor.com`
3. Choose validation method: **CNAME** or **TXT record**

### Step 2: Configure DNS

Add these DNS records at your domain registrar:

```text
Type    Name              Value
─────   ──────────────    ─────────────────────────────────────────
CNAME   devlore           <your-app>.azurestaticapps.net
TXT     _dnsauth.devlore  <validation-code-from-azure>
```

### Step 3: SSL Certificate

Azure Static Web Apps provides free managed SSL certificates automatically once the domain is validated.

## Deployment Verification

After deployment, verify:

```bash
# Check if site is accessible (will redirect to login if auth is configured)
curl -I https://devlore.noblefactor.com

# Expected: 302 redirect to /.auth/login/aad (if auth enabled)
# Or: 200 OK with content (if public)
```

## Managing Stakeholder Access

### Adding Stakeholders

1. Azure Portal → Static Web App → **Role management**
2. **Invite** → Enter email → Select provider (Azure AD) → Role: `authenticated`
3. Stakeholder receives email invitation

### Removing Access

1. Azure Portal → Static Web App → **Role management**
2. Find user → Click **...** → **Delete**

### Custom Roles (Optional)

For different access levels, create custom roles in `staticwebapp.config.json`:

```json
{
  "routes": [
    {
      "route": "/internal/*",
      "allowedRoles": ["internal-stakeholder"]
    },
    {
      "route": "/*",
      "allowedRoles": ["authenticated"]
    }
  ]
}
```

Then invite users with specific roles via the portal.

## Cost Estimate

| Plan | Cost | Features |
|------|------|----------|
| Free | $0/month | 100GB bandwidth, 2 custom domains, no custom auth |
| Standard | ~$9/month | Custom auth, SLA, more bandwidth |

For stakeholder-restricted access with Microsoft Entra ID authentication, the **Standard plan** is required.

## Troubleshooting

### Build Failures

```bash
# Check GitHub Actions logs
# Common issues:
# - Node version mismatch (use Node 20)
# - Missing dependencies (run npm ci)
# - Build output location wrong (should be "dist")
```

### Authentication Not Working

1. Verify `staticwebapp.config.json` is in the repository root
2. Check Entra ID app redirect URIs match your domain
3. Verify app settings (`AAD_CLIENT_ID`, `AAD_CLIENT_SECRET`) are set

### Custom Domain Not Resolving

1. DNS propagation can take up to 48 hours
2. Verify CNAME/TXT records are correct
3. Check validation status in Azure Portal

## Quick Start Commands

```bash
# One-time setup
az login
npm install -g @azure/static-web-apps-cli

# Local development
npm run dev

# Build for production
npm run build

# Deploy (after initial Azure setup)
swa deploy ./dist --app-name devlore-noblefactor-com
```

## Next Steps

1. [ ] Create Azure Static Web App via portal
2. [ ] Configure GitHub Actions workflow
3. [ ] Register Entra ID application
4. [ ] Add `staticwebapp.config.json` for authentication
5. [ ] Invite stakeholders
6. [ ] Configure custom domain (optional)
