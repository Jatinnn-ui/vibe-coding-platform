# Groq API Setup Guide

## ✅ Free, No Credit Card Required

Groq offers a **completely free API** with no credit card needed. Perfect for development and testing.

## Step 1: Get Your Free API Key

1. Go to **https://console.groq.com/keys**
2. Sign up with your email (takes 30 seconds)
3. Copy your API key

## Step 2: Add to Your Project

Open `.env.local` in the root directory and add:

```bash
GROQ_API_KEY=your_api_key_here
```

Replace `your_api_key_here` with the key from Step 1.

## Step 3: Restart Dev Server

```bash
npm run dev
```

## Step 4: Test the Chat

1. Open http://localhost:3000
2. Select "Grok 4.1 Reasoning" from the model dropdown
3. Type a message
4. Chat responds with real AI! 🎉

## Free Tier Limits

- **Rate Limit**: 30 requests per minute
- **Concurrent**: 3 concurrent requests
- **Monthly**: Unlimited (no monthly cap)

Perfect for development and job interviews!

## Troubleshooting

**Error: "API Key not found"**
- Make sure you added `GROQ_API_KEY=` to `.env.local`
- Check you didn't add extra spaces around the `=`
- Restart the dev server

**Error: "Rate limit exceeded"**
- You hit the 30 requests/minute limit
- Wait a minute and try again
- This limit resets every minute

**Chat not responding?**
- Check that Grok model is selected in the dropdown
- Verify API key is correct in `.env.local`
- Check console for error messages

## Available Models

With Groq free API:
- **grok-2** (fast, good for chat)
- **mixtral-8x7b** (alternative)
- **llama-3.1-8b** (lightweight)

The project is configured to use `grok-2` which is the latest and fastest.

## Next Steps

1. ✅ Get free API key from https://console.groq.com/keys
2. ✅ Add to `.env.local`: `GROQ_API_KEY=your_key`
3. ✅ Run: `npm run dev`
4. ✅ Test at http://localhost:3000

## Need Help?

- **Groq Docs**: https://console.groq.com/docs
- **Chat not working?** Check the browser console for errors
- **Want to use another model?** Edit `ai/gateway.ts` and change the model name

---

**Status**: Ready to use Groq API
**Cost**: Completely free
**Setup Time**: 2 minutes
