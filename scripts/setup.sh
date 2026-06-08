#!/bin/bash

# Vibe Coding Platform - Setup Script
# This script sets up the development environment

set -e  # Exit on error

echo "🛠️  Vibe Coding Platform - Setup Script"
echo "======================================"
echo ""

# Check if running from project root
if [ ! -f "package.json" ]; then
    echo "❌ Error: package.json not found. Please run this script from the project root."
    exit 1
fi

# Step 1: Check Node version
echo "Step 1: Checking Node.js version..."
if ! command -v node &> /dev/null; then
    echo "❌ Error: Node.js is not installed"
    echo "Please install Node.js 22.x or later from https://nodejs.org"
    exit 1
fi

NODE_VERSION=$(node -v)
echo "✓ Node.js $NODE_VERSION detected"
echo ""

# Step 2: Install dependencies
echo "Step 2: Installing dependencies..."
npm install
echo "✓ Dependencies installed"
echo ""

# Step 3: Create .env.local if it doesn't exist
echo "Step 3: Setting up environment variables..."
if [ ! -f ".env.local" ]; then
    cp .env.example .env.local
    echo "✓ Created .env.local from .env.example"
    echo "  Edit .env.local to add your API key if needed"
else
    echo "✓ .env.local already exists"
fi
echo ""

# Step 4: Type check
echo "Step 4: Running type check..."
npm run type-check
echo "✓ Type check passed"
echo ""

# Step 5: Build verification
echo "Step 5: Building project for verification..."
npm run build
echo "✓ Build successful"
echo ""

echo "✅ Setup completed successfully!"
echo ""
echo "Next steps:"
echo "1. Edit .env.local if needed (add AI_GATEWAY_API_KEY)"
echo "2. Run: npm run dev"
echo "3. Visit: http://localhost:3000"
echo ""
echo "For deployment, run: ./scripts/deploy.sh"
