# Online Submission

## 📌 Project Overview

The **Online Submission** system is a web-based application designed for managing student assignments, tasks, and submissions. It provides a portal for students and teachers to interact efficiently.

### 🔹 **Tech Stack**

- **Backend:** Java EE (Servlets, JSP, JSTL)
- **ORM:** Hibernate (for PostgreSQL database interactions)
- **Frontend:** JSP, HTML, CSS, JSTL
- **Database:** PostgreSQL
- **Server:** Apache Tomcat 11.0
- **Build Tool:** Maven
- **Deployment Automation:** Python Script

---

## 🏗️ Project Setup

### ✅ **Prerequisites**

Ensure you have the following installed:

1. **Java JDK 17+** ([Download](https://www.oracle.com/java/technologies/javase-downloads.html))
2. **Apache Tomcat 11.0** ([Download](https://tomcat.apache.org/download-11.cgi))
3. **PostgreSQL** ([Download](https://www.postgresql.org/download/))
4. **Maven** ([Download](https://maven.apache.org/download.cgi))
5. **Python 3.7+** (for deployment script)

---

6. **GroupID as "rca"**
7. **ArtifactID as "home"**

### 🚀 **Installation & Setup**

1. **Clone the repository:**
   ```sh
   git clone https://github.com/your-org/online_submission.git
   cd online_submission
   ```

## 🛠️ Deployment Automation (Optional to use)

To automate the deployment, run the **Python script** **But make sure tomcat is running**:

```sh
python deployment_script.py
```

This script will:

1. Clean Tomcat's webapps directory.
2. Clean and repackage the project with Maven.
3. Deploy the latest WAR file to Tomcat.

---

## 📜 License

## This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Contact

For any issues, contact **[Your Name]** at **mugishachrispin590@gmail.com** or open an issue in the repository.

## Lastly, anyone can make changes to all stuffs
