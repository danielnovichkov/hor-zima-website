#!/bin/bash

# Deploy script for ZIMA Community Center website
echo "🚀 Deploying ZIMA website to Vercel..."

# Set environment variables
export VERCEL_TOKEN="1mJLWX60B4M60kyDkFjSEF92"
export VERCEL_ORG_ID="team_jSniaIWflbyEVAKzvswKX8cg"
export VERCEL_PROJECT_ID="prj_iBl6XTKiK3wD9XMSktinaJoQdwGR"

# Deploy to Vercel
echo "📦 Deploying to Vercel..."
npx vercel --prod

echo "✅ Deployment completed!"
echo "🌐 Website URL: https://hor-zima-website-no51kkfss-john-smiths-projects-a2c16bf2.vercel.app"
