# 🚀 Deployment Guide - Carvaan Connect

## Quick Deploy Options

### 🎯 Option 1: Render (Recommended - Free Tier)

**Steps:**
1. Push code to GitHub:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin YOUR_GITHUB_REPO_URL
   git push -u origin main
   ```

2. Go to [render.com](https://render.com) and sign up

3. Click "New +" → "Web Service"

4. Connect your GitHub repository

5. Configure:
   - **Name**: carvaan-connect
   - **Build Command**: `npm install && cd client && npm install && npm run build`
   - **Start Command**: `node server.js`
   - **Environment Variables**:
     - `NODE_ENV` = `production`
     - `JWT_SECRET` = (generate a random string)

6. Click "Create Web Service"

7. Your app will be live at: `https://carvaan-connect.onrender.com`

---

### 🚂 Option 2: Railway

**Steps:**
1. Push code to GitHub (see above)

2. Go to [railway.app](https://railway.app)

3. Click "New Project" → "Deploy from GitHub"

4. Select your repository

5. Add environment variables:
   - `NODE_ENV` = `production`
   - `JWT_SECRET` = (generate a random string)

6. Railway auto-deploys your app

---

### ⚡ Option 3: Vercel + Render (Split Deployment)

**Backend (Render):**
1. Deploy backend as Web Service on Render
2. Note the backend URL (e.g., `https://carvaan-api.onrender.com`)

**Frontend (Vercel):**
1. Go to [vercel.com](https://vercel.com)
2. Import GitHub repository
3. Set **Root Directory**: `client`
4. Add environment variable:
   - `REACT_APP_API_URL` = `YOUR_BACKEND_URL`
5. Deploy

---

### 🐳 Option 4: Docker (Any Platform)

Create `Dockerfile`:
```dockerfile
FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN cd client && npm install && npm run build
EXPOSE 5000
CMD ["node", "server.js"]
```

Deploy:
```bash
docker build -t carvaan-connect .
docker run -p 5000:5000 -e JWT_SECRET=your-secret carvaan-connect
```

---

## 🔐 Environment Variables

Create `.env` file (never commit this):
```
NODE_ENV=production
PORT=5000
JWT_SECRET=your-super-secret-key-change-this
```

Generate secure JWT_SECRET:
```bash
node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"
```

---

## 📦 Pre-Deployment Checklist

- [ ] Push code to GitHub
- [ ] Set `JWT_SECRET` environment variable
- [ ] Set `NODE_ENV=production`
- [ ] Test build locally: `npm run build`
- [ ] Ensure `.gitignore` excludes sensitive files
- [ ] Update CORS settings if needed

---

## 🌐 Post-Deployment

1. **Create Admin Account**: Register first user, then manually set role to 'admin' in database

2. **Test Features**:
   - User registration/login
   - Event creation
   - QR code generation
   - File uploads
   - Real-time notifications

3. **Share URL** with your team!

---

## 🔧 Troubleshooting

**Build fails?**
- Check Node.js version (v16+)
- Verify all dependencies installed
- Check build logs for errors

**App not loading?**
- Verify environment variables set
- Check server logs
- Ensure PORT is correct

**File uploads not working?**
- Ensure `uploads/` directory exists
- Check file permissions
- Verify storage limits on platform

---

## 💰 Cost Estimates

- **Render Free Tier**: $0/month (sleeps after inactivity)
- **Railway Free Tier**: $5 credit/month
- **Vercel Free Tier**: Unlimited for personal projects
- **Heroku**: ~$7/month (Eco Dyno)

---

**Need help?** Check platform documentation or open an issue on GitHub.

🎭 **Happy Deploying!**
