# Quick Start Guide

Get the Vibe Coding Platform running in 5 minutes.

## 🚀 One-Command Setup (Recommended)

```bash
./scripts/setup.sh
```

This script will:
- Check your Node.js version
- Install all dependencies
- Create `.env.local`
- Run type checking
- Build the project

## 📋 Manual Setup

If you prefer to set up manually:

### 1. Install Dependencies
```bash
npm install
```

### 2. Create Environment File
```bash
cp .env.example .env.local
```

### 3. Run Development Server
```bash
npm run dev
```

### 4. Open in Browser
Visit [http://localhost:3000](http://localhost:3000)

## 🔧 Available Commands

```bash
# Development
npm run dev              # Start dev server with hot reload

# Production
npm run build            # Build for production
npm start                # Start production server

# Verification
npm run type-check       # Check TypeScript types
npm run lint             # Run ESLint

# Scripting
./scripts/setup.sh       # Setup development environment
./scripts/deploy.sh      # Deploy to Vercel
```

## 🌐 Using the Platform

1. **Enter a Prompt**: Type your coding request in the chat
2. **Select Model**: Choose from Claude, GPT, or Grok
3. **View Results**: See generated code in the file explorer
4. **Live Preview**: Watch the app build and run in real-time
5. **Monitor Logs**: Check execution logs and errors

## 📦 Environment Variables (Optional)

Edit `.env.local` to customize:

```env
AI_GATEWAY_API_KEY=your_key_here
```

Leave it empty to use default Vercel AI Gateway access.

## 🚢 Deploy to Vercel

### Option 1: Using Script
```bash
./scripts/deploy.sh
```

### Option 2: Using Vercel CLI
```bash
npm install -g vercel
vercel --prod
```

### Option 3: Using Vercel Dashboard
1. Push your code to GitHub
2. Go to [vercel.com](https://vercel.com)
3. Import your repository
4. Deploy

## ✅ Verification

To verify everything is working:

```bash
# Check Node version
node --version          # Should be 22.x or later

# Check dependencies
npm list                # Should show all packages

# Run type check
npm run type-check      # Should have zero errors

# Try the dev server
npm run dev             # Should start on http://localhost:3000
```

## 📚 Documentation

- **README.md** - Full feature overview
- **SETUP.md** - Detailed deployment guide
- **QUALITY_CHECKLIST.md** - Quality assurance details
- **PROJECT_STATUS.md** - Current status report

## ❓ Troubleshooting

### Port 3000 Already in Use
```bash
npm run dev
# It will automatically use another available port
```

### Permission Denied on Scripts
```bash
chmod +x scripts/*.sh
```

### Module Not Found
```bash
npm install
```

### Build Fails
```bash
npm run type-check      # Check for TS errors
npm cache clean --force # Clear cache if needed
npm install             # Reinstall dependencies
```

## 🎯 Next Steps

1. ✓ Run `npm run dev` and test the app
2. ✓ Try entering a prompt (e.g., "Create a todo app")
3. ✓ When ready, deploy with `./scripts/deploy.sh`
4. ✓ Share your deployment URL

## 💡 Tips

- **First Run**: The first build takes longer (15-30 seconds)
- **Hot Reload**: Changes to code auto-refresh in the browser
- **Models**: Different models have different capabilities
- **Preview**: The preview updates as your app is built
- **Logs**: Check command logs for execution details

## 📞 Need Help?

- Check the [Next.js Docs](https://nextjs.org/docs)
- Review [AI SDK Documentation](https://sdk.vercel.ai)
- Visit [Vercel Help Center](https://vercel.com/help)

---

You're all set! Happy coding! 🎉
