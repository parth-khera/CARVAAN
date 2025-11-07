# 🎭 Carvaan Connect  
*A Unified Cultural Club Event & Attendance Management Platform*

---

## 🪶 Introduction

**Carvaan Connect** is an all-in-one web platform designed for college cultural clubs to **organize events**, **track student participation**, and **automate attendance reporting** — all in one place.

Developed for the **Carvaan Club**, this system connects **students, faculty, coordinators, and administrators**, ensuring smooth communication and verified event records through **QR code** or **daily passcode-based attendance**.

After each event, a **PDF attendance report** is automatically generated and sent via **Email**, **WhatsApp**, and **Web Notifications** to the respective **teachers, HODs, coordinators, and principal**.

---

## 🚀 Features at a Glance

| Category | Description |
|-----------|--------------|
| 📰 **Event Management** | Create, publish, and manage upcoming cultural events with venue and timing details. |
| 🧾 **Attendance Tracking** | Dual system — QR code scan or secret word (daily passcode). |
| 🧑‍🎓 **Student Dashboard** | View upcoming events, mark attendance, and check record IDs. |
| 🧑‍🏫 **Faculty/Admin Panel** | Manage events, view attendance logs, and generate reports. |
| 📨 **Notifications** | Send instant updates via Email, WhatsApp, and browser push notifications. |
| 📄 **Report Automation** | Generate and share PDF attendance summaries with all relevant faculty. |
| 🛡️ **Role-Based Access** | Separate logins for Students, Faculty, HODs, and Admins. |
| 💬 **Cross-Platform Support** | Works seamlessly on web, tablet, and mobile devices (PWA-ready). |

---

## 🧰 Tech Stack

| Layer | Technologies |
|--------|---------------|
| **Frontend** | Next.js (React), Tailwind CSS, shadcn/ui, lucide-react |
| **Backend** | FastAPI (Python) / Node.js (Express) |
| **Database** | MongoDB Atlas / PostgreSQL |
| **Authentication** | JWT with role-based access |
| **Reports** | PDFKit / ReportLab |
| **Notifications** | SMTP (Email), WhatsApp Cloud API, Web Push (OneSignal) |
| **Hosting** | Vercel (Frontend), Render / Railway (Backend) |

---

## 🧩 System Architecture

```mermaid
flowchart LR
  A[Frontend: Next.js PWA] -->|JWT| B[(Backend API)]
  B --> C[(Database: MongoDB/PostgreSQL)]
  B --> D[QR & Code Generator]
  B --> E[Attendance Manager]
  B --> F[Report Generator]
  F -->|PDF| G[S3 Storage]
  B --> H[Email Service (SMTP/SendGrid)]
  B --> I[WhatsApp API (Meta/Twilio)]
  B --> J[Web Push Notifications]
  F -->|Report| H
  F -->|Summary| I
