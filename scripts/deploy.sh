#!/bin/bash

# Vibe Coding Platform - Deployment Script
# This script automates the deployment process to Vercel

set -e  # Exit on error

echo "🚀 Vibe Coding Platform - Deployment Script"
echo "==========================================="
echo ""

# Check if running from project root
if [ ! -f "package.json" ]; then
    echo "❌ Error: package.json not found. Please run this script from the project root."
    exit 1
fi

# Step 1: Verify environment
echo "✓ Step 1: Verifying environment..."
if ! command -v node &> /dev/null; then
    echo "❌ Error: Node.js is not installed"
    exit 1
fi
echo "  Node version: $(node --version)"
echo ""

# Step 2: Install dependencies
echo "✓ Step 2: Installing dependencies..."
npm install
echo ""

# Step 3: Type checking
echo "✓ Step 3: Running type check..."
npm run type-check
echo ""

# Step 4: Build
echo "✓ Step 4: Building project..."
npm run build
echo ""

# Step 5: Deploy to Vercel
echo "✓ Step 5: Deploying to Vercel..."
if command -v vercel &> /dev/null; then
    # Check if user wants production deployment
    read -p "Deploy to production? (yes/no) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        vercel --prod
    else
        vercel
    fi
else
    echo "⚠️  Vercel CLI not found. Please install it with: npm install -g vercel"
    echo "Then run: vercel --prod"
fi

echo ""
echo "✅ Deployment process completed!"
echo ""
echo "Next steps:"
echo "1. Check your deployment at https://vercel.com/dashboard"
echo "2. Monitor the application at https://your-deployment-url"
echo "3. Set up custom domain if needed"
