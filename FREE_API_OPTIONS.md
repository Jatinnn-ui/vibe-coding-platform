# Free AI API Options for Vibe Coding Platform

## Current Status
Your chat is running in **DEMO MODE** (free, no API key needed).

The chat UI is fully functional and shows mock responses. To enable real AI responses, choose one of the options below.

---

## Option 1: Vercel AI Gateway (Recommended - Free Tier)

**Status**: Free tier available, then $0.50/month after usage limits

1. Visit: https://vercel.com/d?to=%2F5Bteam%5D%2F7E%2Fai
2. You may see a prompt to add a credit card (for billing after free tier)
3. Copy your API key
4. Update `.env.local`:
   ```
   AI_GATEWAY_API_KEY=your_key_here
   ```
5. Restart the dev server

**Pros**: 
- Works with your current setup (no code changes)
- Supports multiple models (Claude, GPT, Grok)
- Uses Vercel infrastructure
- Best performance

---

## Option 2: Use OpenAI Free Trial

**Status**: Free $5 credit (expires after 3 months)

1. Create account at https://platform.openai.com
2. Get free $5 credit
3. Generate API key
4. Modify `ai/gateway.ts` to use OpenAI directly (instead of gateway)

**Pros**: 
- Actually free for 3 months
- Simple to set up

**Cons**: 
- Requires code changes
- Only works after 3 months if you pay

---

## Option 3: Use Anthropic API (Free Trial)

**Status**: Free $5 credit

1. Create account at https://console.anthropic.com
2. Get free API key
3. Modify `ai/gateway.ts` to use Anthropic

**Pros**: 
- Free $5 credit
- Good model quality
- Simple setup

**Cons**: 
- Limited to Anthropic models only
- Requires code changes

---

## Option 4: Use Local Ollama (Completely Free)

**Status**: 100% free, runs locally

1. Install Ollama from https://ollama.ai
2. Run: `ollama pull mistral` (or another model)
3. Start Ollama: `ollama serve`
4. Modify the chat route to use local endpoint

**Pros**: 
- Completely free
- No internet needed after setup
- Full control over models

**Cons**: 
- Requires powerful computer
- Slower inference than cloud APIs
- Requires code changes

---

## Option 5: Use Groq (Free API)

**Status**: Free API, fast inference

1. Create account at https://console.groq.com
2. Generate API key
3. Modify `ai/gateway.ts` to use Groq

**Pros**: 
- Completely free
- Very fast inference
- Good model options

**Cons**: 
- Requires code changes
- Rate limits on free tier

---

## How to Enable Real AI (Quick Setup)

### Simplest Path: Add Vercel AI Gateway Key

1. Go to: https://vercel.com/d?to=%2F5Bteam%5D%2F7E%2Fai
2. If prompted to add credit card, that's for billing AFTER free tier
3. Copy the API key
4. Edit `.env.local`:
   ```
   AI_GATEWAY_API_KEY=your_key_from_above
   ```
5. Restart dev server: `npm run dev`

That's it! The chat will now use real AI models.

---

## Current Demo Mode

Right now, your chat responds with:
- Sample responses to show UI works
- Instructions on how to enable real AI
- Full streaming simulation

This is perfect for:
- Testing the UI/UX
- Job interviews (showing working chat)
- Local development
- Demos without internet

---

## Recommended Path

1. **Start**: Run in demo mode (current setup ✅)
2. **Today**: Get free API key from Vercel AI Gateway
3. **Deploy**: Push to production with real AI enabled

---

## Troubleshooting

**"Still getting error"**
- Make sure you restarted the dev server after adding API key
- Check `.env.local` file exists and has the key
- Run: `echo $AI_GATEWAY_API_KEY` to verify env var is set

**"Which model should I use?"**
- Vercel AI Gateway supports: Claude, GPT-5, Grok
- All work equally well
- Try Claude Opus 4.6 first

**"Will I be charged?"**
- Vercel AI Gateway has free tier (check limits)
- After free tier: you choose to pay or disable
- Set spending limits in Vercel dashboard

---

## Next Steps

1. **Test Current Setup**: Run `npm run dev` - chat works in demo mode ✅
2. **Add Real AI**: Get API key and update `.env.local`
3. **Deploy**: Push to GitHub and deploy to Vercel

You can test and demo with the current demo mode. Upgrade to real AI when ready!
