# ⚡ Quick Start - Deploy in 5 Minutes

## 🎯 Fastest Way: Render (Free)

### Step 1: Prepare Your Code
```bash
git init
git add .
git commit -m "Ready to deploy"
```

### Step 2: Push to GitHub
1. Create a new repository on [GitHub](https://github.com/new)
2. Copy the repository URL
3. Run:
```bash
git remote add origin YOUR_GITHUB_URL
git push -u origin main
```

### Step 3: Deploy on Render
1. Go to [render.com](https://render.com) → Sign up (free)
2. Click **"New +"** → **"Web Service"**
3. Click **"Connect GitHub"** → Select your repository
4. Fill in:
   - **Name**: `carvaan-connect`
   - **Build Command**: `npm install && cd client && npm install && npm run build`
   - **Start Command**: `node server.js`
5. Click **"Advanced"** → Add Environment Variables:
   - `NODE_ENV` = `production`
   - `JWT_SECRET` = `carvaan-secret-2024-change-this`
6. Click **"Create Web Service"**

### Step 4: Wait & Access
- Build takes 3-5 minutes
- Your app will be live at: `https://carvaan-connect.onrender.com`
- Share the URL with your team! 🎉

---

## 🚀 Alternative: Railway (Even Faster)

1. Push code to GitHub (see above)
2. Go to [railway.app](https://railway.app)
3. Click **"New Project"** → **"Deploy from GitHub"**
4. Select repository → Railway auto-deploys
5. Add environment variable: `JWT_SECRET=your-secret`
6. Done! ✅

---

## 📱 First Login

1. Visit your deployed URL
2. Click **"Register"**
3. Create your account (first user)
4. To make yourself admin:
   - Go to Render Dashboard → Shell
   - Edit `data/users.json`
   - Change your role to `"admin"`

---

## 🎭 You're Live!

Your cultural club platform is now accessible to everyone!

**Share the URL and start managing events! 🎪✨**
