# Advanced Java Practical Labs & Project (ShopSphere)

This repository contains all **7 Advanced Java Lab Experiments** and the **ShopSphere E-Commerce Project** prepared for academic evaluation.

---

## 📋 Submission Checklist

- [x] **Repository Name:** `Swing_Java`
- [x] **Lab Experiments:** Experiments 1 to 7 organized in separate, clearly named folders.
- [x] **Major Project:** Complete multi-module Java project in `Project - ShopSphere/`.
- [x] **Source Code & Files:** All Java files, POMs, web pages, SQL scripts, and drivers included.
- [x] **README.md:** Single, easy-to-read guide for the entire repository.
- [x] **Google Form Submission:** Ready for submission.

---

## 📁 Repository Structure

```
Swing_Java/
├── Experiment 1 - STDregistration/   # Swing Student Registration Form
├── Experiment 2 - Calc/              # Swing Calculator (MVC Pattern)
├── Experiment 3 - JDBC/              # MySQL Database Connectivity (JDBC)
├── Experiment 4 - ServerClient/      # TCP Socket Programming (Client-Server)
├── Experiment 5 - RMI/               # Remote Method Invocation (Distributed System)
├── Experiment 6 - servlet/           # Jakarta Servlets, Sessions, Filters & Cookies
├── Experiment 7 - html_to_jsp/       # HTML to JSP Conversion & Servlet Forwarding
├── Project - ShopSphere/             # Final Java Capstone Project (ShopSphere)
└── README.md                         # This master documentation file
```

---

## 🧪 Lab Experiments Overview

| # | Folder | Topic | What It Does | How to Run |
|---|---|---|---|---|
| **1** | `Experiment 1 - STDregistration` | **Swing GUI Basics** | Student registration form with validation, radio buttons, checkboxes, and dialog popups. | `cd "Experiment 1 - STDregistration"`<br>`javac StudentRegistration.java`<br>`java StudentRegistration` |
| **2** | `Experiment 2 - Calc` | **MVC Pattern** | Desktop calculator strictly separating business logic (`Model`), Swing GUI (`View`), and event handling (`Controller`). | `cd "Experiment 2 - Calc"`<br>`javac *.java`<br>`java Main` |
| **3** | `Experiment 3 - JDBC` | **Database (JDBC)** | Connects to MySQL (`clg` database), inserts records using `PreparedStatement`, and retrieves data using `Statement`/`ResultSet`. | `cd "Experiment 3 - JDBC"`<br>`javac -cp "lib/*;src" -d bin src/App.java`<br>`java -cp "lib/*;bin" App` |
| **4** | `Experiment 4 - ServerClient` | **Socket Networking** | Two-way communication over TCP sockets (`ServerSocket` on port 5000). | **1. Start Server:** `java Server`<br>**2. Start Client:** `java Client` |
| **5** | `Experiment 5 - RMI` | **Distributed RMI** | Calculator service running on RMI Registry (port 1099), called remotely across JVMs. | **1. Start Server:** `java Server`<br>**2. Run Client:** `java Client` |
| **6** | `Experiment 6 - servlet` | **Jakarta Servlets** | Web application with Servlet lifecycle, login session tracking, authentication filter, cookies, and listeners. | `mvn clean package`<br>Deploy `target/servlet.war` to Tomcat 11 |
| **7** | `Experiment 7 - html_to_jsp` | **Servlet & JSP (MVC)** | Converts HTML form to JSP; Servlet acts as Controller and forwards data to `result.jsp` using Expression Language (EL). | `cd servlet`<br>`mvn clean package`<br>Deploy `target/servlet.war` to Tomcat 11 |

---

## 🛒 Major Project: ShopSphere

**ShopSphere** is a complete, multi-tier Java E-Commerce Management System.

### What is Inside:
- **Web Storefront & Admin Portal (`shopsphere-web`):** Built with Jakarta Servlet 6.0 and JSP on Apache Tomcat 11.
- **Desktop Admin App (`shopsphere-desktop`):** Java Swing GUI for managing products, categories, and orders.
- **Socket Networking (`shopsphere-network`):** Multi-threaded TCP inventory socket server & client on port 9090.
- **RMI Service (`shopsphere-rmi`):** Distributed remote inventory service on port 1099.
- **Core Library (`shopsphere-core`):** Shared models, DAOs, JDBC connection pool, and BCrypt password security.
- **Database (`database`):** MySQL 8.0 schema with 12 normalized tables and sample seed data.

---

## ⚡ How to Run the Project

### 1. Prerequisites
- **Java:** JDK 17 or 21
- **Maven:** 3.9+
- **MySQL Server:** 8.0+ running on port 3306
- **Apache Tomcat:** 11.0+ (for web modules)

### 2. Database Setup
From inside `Project - ShopSphere/`:
```cmd
cd "Project - ShopSphere"
import-database.bat
```
*(Or manually import `database/shopsphere.sql` and `database/seed-data.sql` in MySQL).*

### 3. Build the Entire Project
```cmd
mvn clean package
```

### 4. Run With Ready-Made Scripts
Inside `Project - ShopSphere/`, double-click or run:
- **Swing Desktop App:** `run-desktop.bat`
- **TCP Socket Server:** `run-network-server.bat`
- **TCP Socket Client:** `run-network-client.bat`
- **RMI Server:** `run-rmi-server.bat`
- **RMI Client:** `run-rmi-client.bat`
- **Serialization Demo:** `run-serialization-demo.bat`

### 5. Deploy the Web App on Tomcat 11
1. Copy `shopsphere-web/target/shopsphere-web.war` to your `<TOMCAT_HOME>/webapps/` folder.
2. Start Tomcat (`bin/startup.bat`).
3. Open in browser: `http://localhost:8080/shopsphere-web/`

---

## 🔑 Demo Login Credentials

Pre-configured accounts for testing:
- **Default Password for All Accounts:** `Password@123`
- **Admin Account:** `admin@shopsphere.com`
- **Customer Account:** `rahul@example.com`

---

## 🚀 GitHub Upload & Submission Steps

To complete your submission:

1. **Commit your files:**
   ```powershell
   git add .
   git commit -m "Organize lab experiments and ShopSphere project with clean README"
   ```

2. **Push to GitHub:**
   ```powershell
   git branch -M main
   git remote add origin https://github.com/<your-username>/Swing_Java.git
   git push -u origin main
   ```

3. **Submit:** Copy your repository URL (`https://github.com/<your-username>/Swing_Java`) and submit it in the Google Form.
