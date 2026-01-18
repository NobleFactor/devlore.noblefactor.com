#!/bin/bash
# Republish DevLore site to Azure Static Web Apps
# Prompts for login if necessary

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Configuration
APP_NAME="devlore-noblefactor-com"
RESOURCE_GROUP="rg-devlore-site"

cd "$PROJECT_ROOT"

echo "┌────────────────────────────────────────┐"
echo "│  DevLore Site Republish                │"
echo "└────────────────────────────────────────┘"
echo ""

# Check prerequisites
command -v az >/dev/null 2>&1 || { echo "Error: Azure CLI not installed. Run: brew install azure-cli"; exit 1; }
command -v npm >/dev/null 2>&1 || { echo "Error: npm not installed."; exit 1; }

# Check Azure login, prompt if needed
echo "Checking Azure login status..."
if ! az account show >/dev/null 2>&1; then
    echo "Not logged in to Azure. Opening browser for login..."
    az login
fi

# Show current account
echo ""
echo "Using Azure account:"
az account show --query "{Subscription:name, User:user.name}" -o table
echo ""

# Build site
echo "Installing dependencies..."
npm ci --silent

echo "Building site..."
npm run build

# Deploy using Azure CLI
echo ""
echo "Deploying to Azure Static Web Apps..."
echo "  App: $APP_NAME"
echo "  Resource Group: $RESOURCE_GROUP"
echo ""

# Get deployment token
DEPLOYMENT_TOKEN=$(az staticwebapp secrets list \
    -n "$APP_NAME" \
    -g "$RESOURCE_GROUP" \
    --query "properties.apiKey" -o tsv 2>/dev/null)

if [ -z "$DEPLOYMENT_TOKEN" ]; then
    echo "Error: Could not retrieve deployment token. Check that the Static Web App exists."
    exit 1
fi

# Install SWA CLI if needed
if ! command -v swa >/dev/null 2>&1; then
    echo "Installing Azure Static Web Apps CLI..."
    npm install -g @azure/static-web-apps-cli
fi

# Deploy
swa deploy ./dist \
    --deployment-token "$DEPLOYMENT_TOKEN" \
    --env production

echo ""
echo "┌────────────────────────────────────────┐"
echo "│  Deployment Complete                   │"
echo "└────────────────────────────────────────┘"
echo ""
echo "Site URL: https://delightful-grass-0ac0a4c1e.6.azurestaticapps.net"
echo ""
