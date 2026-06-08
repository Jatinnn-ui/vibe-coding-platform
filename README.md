# Vibe Coding Platform

An end-to-end coding platform where users enter text prompts and an AI agent generates full-stack applications in a sandboxed environment with live preview, file explorer, and command logs.

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?demo-description=A+full-stack+coding+platform+built+with+Vercel%27s+AI+Cloud%2C+AI+SDK%2C+and+Next.js.&demo-image=https%3A%2F%2Fassets.vercel.com%2Fimage%2Fupload%2Fv1754588832%2FOSSvibecodingplatform%2Fscreenshot.png&demo-title=Vibe+Coding+Platform&demo-url=https%3A%2F%2Fvercel.fyi%2Fvibes&project-name=Vibe+Coding+Platform&repository-name=vibe-coding-platform&repository-url=https%3A%2F%2Fgithub.com%2Fvercel%2Fexamples%2Ftree%2Fmain%2Fapps%2Fvibe-coding-platform&from=vibe-coding-platform-app)

## Features

- Multi-model support via AI Gateway (Claude, GPT, Grok)
- Secure code execution with Vercel Sandbox
- Real-time live preview of generated apps
- File explorer for browsing project files
- Command logs and error monitoring
- One-click deploy to Vercel

## Tech Stack

- [Next.js](https://nextjs.org) with Turbopack
- [AI SDK](https://ai-sdk.dev) v6
- [Vercel AI Gateway](https://vercel.com/docs/ai-gateway)
- [Vercel Sandbox](https://vercel.com/docs/vercel-sandbox)
- [Tailwind CSS](https://tailwindcss.com)
- [shadcn/ui](https://ui.shadcn.com)

## Getting Started

### Prerequisites

- Node.js 22.x or later
- npm, pnpm, or yarn

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/jatin223089-ui/vibe-coding-platform.git
   cd vibe-coding-platform
   ```

2. **Install dependencies**
   ```bash
   npm install
   # or
   pnpm install
   ```

3. **Configure environment variables**
   Create a `.env.local` file in the root directory:
   ```bash
   AI_GATEWAY_API_KEY=your_api_key_here
   ```
   
   If you don't have an API key, the app will use the default Vercel AI Gateway (requires no key for supported models).

4. **Run the development server**
   ```bash
   npm run dev
   # or
   pnpm dev
   ```

5. **Open in browser**
   Open [http://localhost:3000](http://localhost:3000) in your browser.

### Available Scripts

- `npm run dev` - Start development server with Turbopack
- `npm run build` - Build for production
- `npm start` - Start production server
- `npm run type-check` - Run TypeScript type checking
- `npm run lint` - Run ESLint (if configured)

## Supported Models

The platform supports multiple AI models via Vercel AI Gateway:
- Claude Opus 4.6
- Claude Sonnet 4.6
- GPT-5.3 Codex
- Grok 4.1 Reasoning

## Project Structure

```
├── app/                    # Next.js App Router
│   ├── api/               # API routes
│   ├── layout.tsx         # Root layout
│   ├── page.tsx           # Home page
│   └── ...
├── components/            # React components
│   ├── chat/              # Chat interface components
│   ├── file-explorer/     # File browser
│   ├── preview/           # Live preview
│   └── ...
├── ai/                    # AI integration
│   ├── constants.ts       # Model definitions
│   ├── gateway.ts         # AI Gateway config
│   └── tools/             # AI tools
├── lib/                   # Utilities
└── public/                # Static assets
```

## Deploy

### Deploy to Vercel

Click the deploy button in the README or run:

```bash
vercel deploy
```

### Environment Variables for Production

Make sure to set the following environment variables in your Vercel project settings:
- `AI_GATEWAY_API_KEY` - Your API key for AI Gateway (optional, uses default if not set)

## Troubleshooting

### Port 3000 already in use
The dev server will automatically use an available port if 3000 is occupied.

### Build errors with shiki
This is a known compatibility issue in the current environment. The build still completes successfully despite the warnings.

### TypeScript errors
Run `npm run type-check` to verify all types are correct.

## Contributing

Contributions are welcome! Please follow the existing code style and ensure all tests pass before submitting a PR.

## License

MIT
