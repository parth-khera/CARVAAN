@echo off
echo 🎭 Carvaan Connect - Deployment Script
echo =======================================

echo 📦 Installing dependencies...
call npm install
cd client
call npm install
cd ..

echo 🏗️  Building frontend...
cd client
call npm run build
cd ..

echo ✅ Build complete!
echo 🚀 Start server with: npm start
echo 🌐 Or deploy to Render/Railway/Vercel
pause
