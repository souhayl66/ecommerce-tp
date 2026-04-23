# 🛒 E‑commerce TP (Jakarta EE + TomEE)

<p align="center">
  <img src="https://media.giphy.com/media/l0MYt5jPR6QX5pnqM/giphy.gif" width="250" alt="Shopping cart gif"/>
</p>

## 📖 Overview
The **E‑commerce TP** project is a full‑stack web application built with **Jakarta EE + TomEE**.  
It demonstrates a complete online shopping workflow including client management, product catalog, shopping cart, and order validation — all backed by a robust persistence layer with JPA and MySQL.

---

## ✨ Features
- 👤 **Client Management** – Create or reuse existing clients  
- 📦 **Product Catalog** – Browse available products  
- 🛒 **Shopping Cart** – Add/remove products, update quantities  
- ✅ **Order Management** – Create, validate, and list orders  
- 💾 **Persistence** – Orders and clients stored in MySQL via JPA  
- 📊 **Stock Management** – Product stock updated automatically when orders are placed  

---

## ⚙️ Tech Stack & Tools
| **Component**       | **Version / Tool Used** |
|----------------------|--------------------------|
| **Java**            | JDK 17 |
| **Jakarta EE**       | 9.1 (Servlets, JSP, JPA) |
| **Apache TomEE**     | 9.0.x (Web Profile) |
| **Build Tool**       | Maven 3.9.x |
| **Database**         | MySQL 8.0.x |
| **JDBC Driver**      | mysql-connector-j 8.4.0 |
| **Frontend**         | JSP, Bootstrap 5 |
| **Persistence**      | JPA (jakarta.persistence) |
| **Dependencies**     | jakarta.servlet-api 5.0.0, jakarta.el-api 4.0.0, jakarta.activation 2.0.0, jakarta.xml.bind-api 3.0.0, JSTL 2.0.0 |

---

## 🚀 Getting Started

### Prerequisites
- Java 17  
- Maven 3.9+  
- MySQL 8.0+  
- Apache TomEE 9.x  

### Installation
```bash
# Clone the repository
git clone https://github.com/souhayl66/commerce-tp.git

# Navigate into the project
cd commerce-tp

# Build the project
mvn clean install

# Deploy to TomEE
cp target/commerce-tp.war $TOMEE_HOME/webapps/
