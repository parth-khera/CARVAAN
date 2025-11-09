#!/bin/bash

echo "🎭 Carvaan Connect - Deployment Script"
echo "======================================="

# Install dependencies
echo "📦 Installing dependencies..."
npm install
cd client && npm install && cd ..

# Build frontend
echo "🏗️  Building frontend..."
cd client && npm run build && cd ..

# Set environment
export NODE_ENV=production

echo "✅ Build complete!"
echo "🚀 Start server with: npm start"
echo "🌐 Or deploy to Render/Railway/Vercel"
