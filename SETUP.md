# Setup Guide for Vibe Coding Platform

This guide will help you set up and deploy the Vibe Coding Platform for production.

## Local Development Setup

### 1. System Requirements
- **Node.js**: 22.x or later
- **Package Manager**: npm 10.x, pnpm 9.x, or yarn 4.x
- **RAM**: At least 4GB free
- **Disk Space**: At least 2GB free for node_modules and build output

### 2. Installation Steps

```bash
# Clone the repository
git clone https://github.com/jatin223089-ui/vibe-coding-platform.git
cd vibe-coding-platform

# Install dependencies
npm install

# Create environment file
cp .env.example .env.local

# Edit .env.local and add your API key (optional)
# AI_GATEWAY_API_KEY=your_key_here
```

### 3. Verify Installation

```bash
# Type check
npm run type-check

# Build for production
npm run build

# Start development server
npm run dev
```

Visit `http://localhost:3000` to verify everything is working.

## Environment Variables

### .env.local (Development)
```
AI_GATEWAY_API_KEY=       # Optional: Vercel AI Gateway API key
```

The app works without this key using default Vercel AI Gateway access.

## Production Deployment

### Deploy to Vercel (Recommended)

1. **Push your code to GitHub**
   ```bash
   git add .
   git commit -m "Ready for production"
   git push origin main
   ```

2. **Connect to Vercel**
   - Go to [vercel.com](https://vercel.com)
   - Click "New Project"
   - Import your GitHub repository
   - Select the root directory

3. **Configure Environment Variables**
   - In Vercel Dashboard → Settings → Environment Variables
   - Add: `AI_GATEWAY_API_KEY` (if using custom API key)

4. **Deploy**
   - Click "Deploy"
   - Vercel will automatically build and deploy your app

### Deploy Using Vercel CLI

```bash
# Install Vercel CLI globally
npm install -g vercel

# Deploy
vercel

# For production
vercel --prod
```

## Troubleshooting

### Issue: "Address already in use" error
**Solution**: Port 3000 is already in use. The dev server will use another port automatically.

### Issue: TypeScript compilation errors
**Solution**: Run `npm run type-check` to verify types. All errors must be fixed before deployment.

### Issue: Module not found errors
**Solution**: Run `npm install` to ensure all dependencies are installed.

### Issue: API returns 500 error
**Solution**: Ensure `.env.local` is properly configured and the API key is valid (if using custom key).

### Issue: Build fails with shiki warnings
**Solution**: These are non-fatal warnings. The build will still complete successfully.

## Performance Optimization

The project uses:
- **Turbopack**: Next.js's next-generation bundler for faster builds
- **Tailwind CSS v4**: Minimal CSS output
- **Image optimization**: Automatic image optimization in Next.js
- **Code splitting**: Automatic route-based code splitting

## Security Best Practices

1. **Never commit `.env.local`** - Add to `.gitignore` (already configured)
2. **Use environment variables** for all sensitive data
3. **Keep dependencies updated** - Run `npm audit` regularly
4. **Enable Vercel security features** - Two-factor authentication, deployment protection
5. **Rotate API keys** regularly if using custom keys

## Maintenance

### Regular Tasks

1. **Update dependencies**
   ```bash
   npm audit
   npm update
   npm install
   ```

2. **Monitor production**
   - Check Vercel Analytics dashboard
   - Monitor error logs in Vercel dashboard
   - Review performance metrics

3. **Backup data**
   - Export any user-generated content regularly
   - Keep database backups

## Support

For issues or questions:
1. Check [Next.js docs](https://nextjs.org/docs)
2. Review [AI SDK docs](https://sdk.vercel.ai)
3. Visit [Vercel Support](https://vercel.com/help)

## Additional Resources

- [Vercel AI Gateway Documentation](https://vercel.com/docs/ai-gateway)
- [Vercel Sandbox Documentation](https://vercel.com/docs/vercel-sandbox)
- [Next.js 16 Documentation](https://nextjs.org/docs)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
