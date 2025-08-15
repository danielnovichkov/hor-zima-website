#!/bin/bash

echo "🌐 Checking ZIMA website status..."
echo ""

# Check Vercel
echo "📦 Vercel:"
curl -s -o /dev/null -w "Status: %{http_code}\n" https://hor-zima-website-no51kkfss-john-smiths-projects-a2c16bf2.vercel.app

# Check GitHub Pages
echo "📦 GitHub Pages:"
curl -s -o /dev/null -w "Status: %{http_code}\n" https://danielnovichkov.github.io/hor-zima-website/

echo ""
echo "✅ Status check completed!"
echo "🌐 Vercel: https://hor-zima-website-no51kkfss-john-smiths-projects-a2c16bf2.vercel.app"
echo "🌐 GitHub Pages: https://danielnovichkov.github.io/hor-zima-website/"
