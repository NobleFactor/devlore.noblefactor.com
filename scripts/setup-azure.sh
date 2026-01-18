#!/bin/bash
# Initial Azure setup for DevLore site
# Run this once to create the Azure Static Web App resource

set -e

# Configuration - customize these
RESOURCE_GROUP="rg-devlore-site"
LOCATION="westus2"
APP_NAME="devlore-noblefactor-com"
SKU="Standard"  # Use "Standard" for authentication features, "Free" otherwise

echo "┌────────────────────────────────────────────────┐"
echo "│  Azure Static Web App Setup                    │"
echo "└────────────────────────────────────────────────┘"
echo ""
echo "This script will create:"
echo "  • Resource Group: $RESOURCE_GROUP"
echo "  • Static Web App: $APP_NAME"
echo "  • SKU: $SKU"
echo "  • Location: $LOCATION"
echo ""

# Check prerequisites
command -v az >/dev/null 2>&1 || { echo "Error: Azure CLI not installed. Run: brew install azure-cli"; exit 1; }

# Verify logged in
if ! az account show >/dev/null 2>&1; then
    echo "Not logged in to Azure. Running 'az login'..."
    az login
fi

# Show current subscription
echo "Using Azure subscription:"
az account show --query "{Name:name, SubscriptionId:id}" -o table
echo ""

read -p "Continue with this subscription? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborted. Use 'az account set --subscription <name>' to change subscription."
    exit 1
fi

echo ""
echo "Creating resource group..."
az group create \
    --name "$RESOURCE_GROUP" \
    --location "$LOCATION" \
    --output table

echo ""
echo "Creating Static Web App..."
echo ""
echo "NOTE: For full GitHub integration, create the Static Web App via the Azure Portal."
echo "      This allows Azure to automatically create the GitHub Actions workflow."
echo ""
echo "Portal URL: https://portal.azure.com/#create/Microsoft.StaticApp"
echo ""
echo "Settings to use:"
echo "  • Subscription: (your subscription)"
echo "  • Resource Group: $RESOURCE_GROUP"
echo "  • Name: $APP_NAME"
echo "  • Plan type: $SKU"
echo "  • Region: $LOCATION"
echo "  • Source: GitHub"
echo "  • Organization: NobleFactor"
echo "  • Repository: devlore.noblefactor.com"
echo "  • Branch: main"
echo "  • Build Presets: Custom"
echo "  • App location: /"
echo "  • Output location: dist"
echo ""

# Alternative: Create via CLI (limited - no GitHub integration)
# Uncomment if you want CLI-only creation
# az staticwebapp create \
#     --name "$APP_NAME" \
#     --resource-group "$RESOURCE_GROUP" \
#     --location "$LOCATION" \
#     --sku "$SKU"

echo "┌────────────────────────────────────────────────┐"
echo "│  Next Steps                                    │"
echo "└────────────────────────────────────────────────┘"
echo ""
echo "1. Create Static Web App via Azure Portal (link above)"
echo "2. Azure will create a GitHub Actions workflow automatically"
echo "3. Add the deployment token to GitHub secrets:"
echo "   • Go to Azure Portal → Static Web App → Manage deployment token"
echo "   • Copy the token"
echo "   • Go to GitHub → Settings → Secrets → Actions"
echo "   • Create: AZURE_STATIC_WEB_APPS_API_TOKEN"
echo ""
echo "4. For authentication, configure Entra ID:"
echo "   • See DEPLOYMENT.md for detailed instructions"
echo ""
echo "5. Invite stakeholders:"
echo "   • Azure Portal → Static Web App → Role management → Invite"
echo ""
