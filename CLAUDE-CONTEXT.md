# DevLore Site - Session Context

Last updated: 2026-01-18

## Site URL

https://delightful-grass-0ac0a4c1e.6.azurestaticapps.net

## Azure Resources

| Resource | Name | ID/Details |
|----------|------|------------|
| Subscription | Visual Studio Enterprise | `5559ef2f-a9cc-4e82-9364-1300c8bd6c4f` |
| Tenant | thenobles.us | `c31c4b20-38b6-4355-96d8-9ccde7e1ca71` |
| Resource Group | `rg-devlore-site` | West US 2 |
| Static Web App | `devlore-noblefactor-com` | Standard tier |

## Authentication

Uses **built-in Azure AD authentication** (not custom Entra ID app registration).

Users must be explicitly invited via the Static Web App invitation system. The `staticwebapp.config.json` requires the `authenticated` role for all routes.

**Key insight:** Custom Entra ID app registration caused redirect loops. The built-in auth with user invitations works correctly.

## Authorized Users

| User | Email | Status |
|------|-------|--------|
| David Noble | David@thenobles.us | ✓ Invited & Active |
| Patricia Noble | Patricia@thenobles.us | Invited (pending acceptance) |
| Sarah Noble | Sarah@thenobles.us | Invited (pending acceptance) |
| Julia Noble | Julia@thenobles.us | Invited (pending acceptance) |
| Mario Noble | Mario@thenobles.us | Invited (pending acceptance) |
| Jimmy Noble | Jimmy@thenobles.us | Invited (pending acceptance) |

Invitations expire 2026-01-25. Users click invitation link once to activate access.

## Invite New Users

```bash
az staticwebapp users invite \
  --name devlore-noblefactor-com \
  --resource-group rg-devlore-site \
  --authentication-provider aad \
  --user-details "email@thenobles.us" \
  --role "authenticated" \
  --domain "delightful-grass-0ac0a4c1e.6.azurestaticapps.net" \
  --invitation-expiration-in-hours 168
```

## List Current Users

```bash
az staticwebapp users list \
  --name devlore-noblefactor-com \
  --resource-group rg-devlore-site
```

## GitHub Repository

- **Repo:** NobleFactor/devlore.noblefactor.com
- **Branch:** develop (default, deploys automatically)
- **Secret:** `AZURE_STATIC_WEB_APPS_API_TOKEN` (set)

For GitHub secrets documentation, see [DEPLOYMENT.md#github-secrets](DEPLOYMENT.md#github-secrets).

## Custom Domain (Pending)

To add `devlore.noblefactor.com`:

1. Add DNS CNAME record at names.com:
   - **Type:** CNAME
   - **Host:** `devlore`
   - **Value:** `delightful-grass-0ac0a4c1e.6.azurestaticapps.net`

2. Then run:
   ```bash
   az staticwebapp hostname set \
     --name devlore-noblefactor-com \
     --resource-group rg-devlore-site \
     --hostname devlore.noblefactor.com
   ```

## Quick Commands

```bash
# Republish site
cd ~/Workspace/NobleFactor/devlore.noblefactor.com && ./scripts/republish.sh

# Check Azure login
az account show

# Login to Azure
az login

# Check recent deployments
cd ~/Workspace/NobleFactor/devlore.noblefactor.com && gh run list --limit 5

# View invited users
az staticwebapp users list --name devlore-noblefactor-com --resource-group rg-devlore-site -o table
```

## Troubleshooting

If users get 401 Unauthorized after signing in, they need to accept an invitation first. Generate a new invitation link for them using the invite command above.
