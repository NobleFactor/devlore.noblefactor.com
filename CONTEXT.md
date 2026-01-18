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
| Entra ID App | DevLore Site | `4b23d94b-33f1-4934-ac08-4f9b219ff55b` |
| Service Principal | DevLore Site | `32609d04-4dc2-4e04-9ffd-ac4f6dbf31b6` |

## App Settings on Static Web App

- `AAD_CLIENT_ID` = `4b23d94b-33f1-4934-ac08-4f9b219ff55b`
- `AAD_CLIENT_SECRET` = (stored in Azure, regenerate if needed)

## Entra ID App Configuration

- **Sign-in audience:** AzureADMyOrg (single tenant)
- **Redirect URI:** `https://delightful-grass-0ac0a4c1e.6.azurestaticapps.net/.auth/login/aad/callback`
- **API Permissions:** User.Read, openid, profile (admin consent granted)

## Authorized Users

All users in thenobles.us tenant can sign in:

| User | Email | Status |
|------|-------|--------|
| David Noble | David@thenobles.us | Existing |
| Patricia Noble | Patricia@thenobles.us | Existing |
| Sarah Noble | Sarah@thenobles.us | Password reset |
| Julia Noble | Julia@thenobles.us | Password reset |
| Mario Noble | Mario@thenobles.us | Created 2026-01-18 |
| Jimmy Noble | Jimmy@thenobles.us | Created 2026-01-18 |

Temporary password for new/reset users: `DevLore2026!` (must change on first login)

## GitHub Repository

- **Repo:** NobleFactor/devlore.noblefactor.com
- **Branch:** develop (default, deploys automatically)
- **Secret:** `AZURE_STATIC_WEB_APPS_API_TOKEN` (set)

## Current Issue Being Debugged

Login loop - user authenticates but bounces back to signin prompt.

**Fix attempted:** Added `/.auth/*` route to allow anonymous access for auth callbacks.

**If still failing, try:**

1. Clear browser cookies / use incognito window
2. Check browser console for errors
3. Regenerate client secret:
   ```bash
   az ad app credential reset --id 4b23d94b-33f1-4934-ac08-4f9b219ff55b --display-name "DevLore Site Secret"
   ```
   Then update the app setting:
   ```bash
   az staticwebapp appsettings set --name devlore-noblefactor-com --resource-group rg-devlore-site --setting-names "AAD_CLIENT_SECRET=<new-secret>"
   ```

4. Verify redirect URI matches exactly:
   ```bash
   az ad app show --id 4b23d94b-33f1-4934-ac08-4f9b219ff55b --query "web.redirectUris"
   ```

## Quick Commands

```bash
# Republish site
cd ~/Workspace/NobleFactor/devlore.noblefactor.com && ./scripts/republish.sh

# Check Azure login
az account show

# Login to Azure
az login

# View app settings
az staticwebapp appsettings list --name devlore-noblefactor-com --resource-group rg-devlore-site

# View deployment token
az staticwebapp secrets list -n devlore-noblefactor-com -g rg-devlore-site --query "properties.apiKey" -o tsv

# Check recent deployments
cd ~/Workspace/NobleFactor/devlore.noblefactor.com && gh run list --limit 5
```
