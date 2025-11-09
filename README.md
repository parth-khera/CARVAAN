# 🎭 Carvaan Connect - Cultural Club Management Platform

A vibrant, full-stack web application with role-based authentication, real-time notifications, and QR code attendance for university cultural activities.

## ✨ Features

### 🎓 **For Students**
- **Event Discovery**: Browse and attend cultural events
- **QR Code Scanner**: Scan event QR codes to mark attendance instantly
- **Photo Sharing**: Upload and share memories from cultural activities
- **Club Membership**: Join cultural clubs and connect with peers
- **Real-time Notifications**: Get instant updates on events and approvals
- **Personalized Dashboard**: Track participation stats and recent activity

### 👨🏫 **For Faculty Coordinators**
- **Event Management**: Create and manage events with auto QR code generation
- **Attendance Approval**: Review and approve student attendance requests
- **QR Code Display**: Show QR codes for students to scan
- **Attendance Reports**: Generate comprehensive analytics with CSV export
- **Club Oversight**: Monitor club activities and member engagement
- **Real-time Notifications**: Get notified when students mark attendance

### 👑 **For Admins**
- **User Management**: Manage all users and assign roles
- **System Analytics**: View platform-wide statistics
- **Permission Control**: Assign and modify user permissions
- **Complete Oversight**: Access to all events, clubs, and reports

## 🎨 Design Philosophy

**Youthful & Creative**: Inspired by Indian college fests and cultural celebrations
**Color Palette**: Warm maroon, gold, cream with artistic gradients
**Modern UI**: Glass effects, smooth animations with Framer Motion
**Cultural Elements**: Emojis, Indian cultural references, and community-focused design

## 🚀 Tech Stack

### Frontend
- **React 18** - Modern UI library with hooks
- **Tailwind CSS** - Utility-first styling with custom artistic theme
- **Framer Motion** - Smooth animations and transitions
- **React Router v6** - Client-side routing with protected routes
- **Socket.IO Client** - Real-time notifications
- **Lucide React** - Beautiful icons
- **Axios** - API communication
- **Recharts** - Data visualization

### Backend
- **Node.js & Express** - RESTful API server
- **Socket.IO** - Real-time WebSocket communication
- **JWT** - Secure authentication and authorization
- **bcryptjs** - Password hashing
- **QRCode** - QR code generation for events
- **Multer** - File upload handling
- **JSON Storage** - Simple data persistence

## 📦 Installation & Setup

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn

### Quick Start

1. **Clone and Install**
   ```bash
   cd carvaanlite
   npm run install-all
   ```

2. **Start Development**
   ```bash
   npm run dev
   ```

3. **Access the Application**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000

### Individual Services

**Backend Only:**
```bash
npm run server
```

**Frontend Only:**
```bash
npm run client
```

## 📁 Project Structure

```
carvaanlite/
├── client/                 # React frontend
│   ├── src/
│   │   ├── components/     # Reusable UI components
│   │   ├── pages/         # Main application pages
│   │   ├── context/       # Auth & Notification contexts
│   │   └── index.css      # Artistic styling
│   └── package.json
├── data/                  # JSON data storage
│   ├── events.json       # Event data with QR codes
│   ├── clubs.json        # Club information
│   ├── users.json        # User accounts
│   ├── gallery.json      # Photo gallery
│   └── notifications.json # Real-time notifications
├── uploads/              # File upload directory
├── server.js            # Express backend with Socket.IO
└── package.json         # Main project config
```

## 🎯 Key Pages

### 🔐 **Authentication**
- Login with role-based access
- Registration with role selection (Student/Faculty)
- JWT token-based authentication
- Protected routes by role

### 📊 **Dashboard** (Role-Based)
- **Student Dashboard**: Events attended, clubs joined, upcoming events, points earned
- **Faculty Dashboard**: Events created, total attendance, pending approvals, avg attendance
- **Admin Dashboard**: Total users, events, clubs, platform-wide statistics
- Real-time stats with smooth animations

### 📅 **Events**
- Event creation with QR code auto-generation (Faculty/Admin)
- Cultural event browsing with filters
- One-click attendance marking (Students)
- QR code display for faculty
- Attendance approval system
- Event deletion and management

### 📱 **QR Scanner** (Students Only)
- Camera-based QR code scanning
- Manual code entry option
- Instant attendance confirmation
- Success/error feedback

### 📸 **Gallery**
- Photo upload with captions
- Social media-style interactions
- Event-based photo organization
- Recent highlights showcase

### 🎪 **Clubs**
- Club creation and management
- Cultural category organization
- Membership tracking
- Meeting schedule display

### 📊 **Reports** (Faculty/Admin Only)
- Attendance analytics dashboard
- CSV report generation
- Event performance metrics
- Approval tracking

### 👑 **Admin Panel** (Admin Only)
- User management table
- Role assignment and modification
- User statistics by role
- Edit and delete capabilities

## 🎨 Artistic Features

### Visual Design
- **Glass Effects**: Backdrop blur with transparency
- **Gradient Backgrounds**: Artistic color transitions
- **Smooth Animations**: Framer Motion transitions
- **Hover Effects**: Lift effects on cards
- **Cultural Icons**: Emojis and symbols throughout
- **Responsive Layout**: Mobile-first design approach

### Color System
```css
Maroon: #8B1538 (Primary brand color)
Gold: #FFD700 (Accent and highlights)
Cream: #F5F5DC (Background and cards)
Light Maroon: #A64B6B (Secondary elements)
Gradients: Artistic blends of primary colors
```

## 🔧 API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `GET /api/auth/me` - Get current user (protected)

### Events
- `GET /api/events` - Fetch all events (protected)
- `POST /api/events` - Create new event with QR code (faculty/admin)
- `PUT /api/events/:id` - Update event (faculty/admin)
- `DELETE /api/events/:id` - Delete event (faculty/admin)
- `POST /api/events/:id/attend` - Mark attendance (protected)
- `POST /api/events/:eventId/approve/:userId` - Approve attendance (faculty/admin)

### Clubs
- `GET /api/clubs` - Fetch all clubs (protected)
- `POST /api/clubs` - Create new club (faculty/admin)
- `POST /api/clubs/:id/join` - Join club (protected)

### Gallery
- `GET /api/gallery` - Fetch all photos (protected)
- `POST /api/gallery` - Upload new photo (protected)

### Notifications
- `GET /api/notifications` - Get user notifications (protected)
- `PUT /api/notifications/:id/read` - Mark notification as read (protected)

### Dashboard
- `GET /api/dashboard/stats` - Get role-based dashboard statistics (protected)

### Reports
- `GET /api/reports/attendance/:eventId` - Generate attendance report (faculty/admin)

### Admin
- `GET /api/admin/users` - Get all users (admin only)
- `PUT /api/admin/users/:id/role` - Update user role (admin only)

## 🌟 Getting Started

1. **Register an Account**: Create your first account by registering
2. **Select Role**: Choose Student or Faculty during registration
3. **Admin Access**: First registered user can be manually set to admin role in `data/users.json`
4. **Create Content**: Faculty can create events, clubs, and manage activities
5. **Student Participation**: Students can join clubs, attend events, and scan QR codes

## 🔔 Real-time Features

### WebSocket Notifications
- **Event Creation**: All students notified when new event is created
- **Attendance Marked**: Faculty notified when student marks attendance
- **Attendance Approved**: Student notified when attendance is approved
- **Browser Notifications**: Desktop notifications for important updates

### QR Code System
- Auto-generated QR codes for each event
- Secure attendance tracking
- Instant verification
- Manual code entry fallback

## 🚀 Deployment

### Production Build
```bash
npm run build
```

### Environment Variables
Create `.env` file:
```
NODE_ENV=production
PORT=5000
JWT_SECRET=your-secret-key-here
```

## 🔒 Security Features

- **JWT Authentication**: Secure token-based authentication
- **Password Hashing**: bcrypt for secure password storage
- **Role-Based Access Control**: Protected routes and API endpoints
- **Input Validation**: Server-side validation for all inputs
- **CORS Protection**: Configured cross-origin resource sharing

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🎭 About Carvaan Connect

**Carvaan** (कारवाँ) means "caravan" or "journey" in Hindi/Urdu, symbolizing the collective journey of cultural exploration and community building in universities. The platform connects students and teachers through shared cultural experiences, fostering creativity, tradition, and collaboration.

### Key Highlights
- ✅ **Role-Based Authentication** - Student, Faculty, Admin roles
- ✅ **Real-time Notifications** - WebSocket-powered updates
- ✅ **QR Code Attendance** - Modern attendance tracking
- ✅ **Dynamic Dashboards** - Personalized for each role
- ✅ **Smooth Animations** - Framer Motion transitions
- ✅ **Modern UI/UX** - Tailwind CSS with artistic theme
- ✅ **Responsive Design** - Mobile-first approach

---

**Built with ❤️ for the cultural community**

*Where Culture Meets Community* 🎪✨