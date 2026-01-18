#!/bin/bash
# Deploy DevLore site to Azure Static Web Apps
# Prerequisites: Azure CLI, SWA CLI, logged in to Azure

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Configuration
APP_NAME="${AZURE_SWA_APP_NAME:-devlore-noblefactor-com}"
RESOURCE_GROUP="${AZURE_RESOURCE_GROUP:-rg-devlore-site}"

cd "$PROJECT_ROOT"

echo "┌────────────────────────────────────────┐"
echo "│  DevLore Site Deployment               │"
echo "└────────────────────────────────────────┘"

# Check prerequisites
command -v az >/dev/null 2>&1 || { echo "Error: Azure CLI not installed. Run: brew install azure-cli"; exit 1; }
command -v swa >/dev/null 2>&1 || { echo "Error: SWA CLI not installed. Run: npm install -g @azure/static-web-apps-cli"; exit 1; }

# Verify logged in
if ! az account show >/dev/null 2>&1; then
    echo "Not logged in to Azure. Running 'az login'..."
    az login
fi

echo ""
echo "Building site..."
npm ci
npm run build

echo ""
echo "Deploying to Azure Static Web Apps..."
echo "  App Name: $APP_NAME"
echo "  Resource Group: $RESOURCE_GROUP"
echo ""

swa deploy ./dist \
    --app-name "$APP_NAME" \
    --resource-group "$RESOURCE_GROUP"

echo ""
echo "┌────────────────────────────────────────┐"
echo "│  Deployment Complete                   │"
echo "└────────────────────────────────────────┘"
echo ""
echo "Site URL: https://${APP_NAME}.azurestaticapps.net"
echo ""
echo "Next steps:"
echo "  1. Configure custom domain in Azure Portal"
echo "  2. Invite stakeholders via Role management"
