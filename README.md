# 🚀 HTML App CI/CD with Docker, Jenkins & Kubernetes

Ini adalah proyek contoh **DevOps pipeline lengkap** untuk mendemonstrasikan cara menjalankan aplikasi HTML statis melalui **Docker**, diotomatisasi dengan **Jenkins CI/CD**, dan dideploy ke **Kubernetes** (Minikube).

---

## 🧱 Teknologi yang Digunakan

- 🧾 **HTML** — Aplikasi statis sederhana
- 🐳 **Docker** — Containerization
- ⚙️ **Jenkins** — CI/CD automation
- ☸️ **Kubernetes (Minikube)** — Deployment & service orchestration
- 📦 **Docker Hub** — Container registry
- 📁 **kubectl** — CLI untuk Kubernetes

---

## 📂 Struktur Proyek

html-k8s-jenkins/
├── index.html # Halaman utama aplikasi
├── Dockerfile # Build image berbasis nginx
├── Jenkinsfile # Pipeline CI/CD
└── k8s/
├── deployment.yaml # Deploy ke Kubernetes
└── service.yaml # Expose sebagai NodePort

---

## 🔄 Alur CI/CD

1. 🧑‍💻 Developer push code ke GitHub.
2. 🤖 Jenkins:
   - Build Docker image dari `Dockerfile`.
   - Push image ke Docker Hub.
   - Jalankan `kubectl apply` untuk deploy ke Minikube.
3. ☸️ Kubernetes menjalankan container sebagai Pod.
4. 🌐 Aplikasi bisa diakses dari browser.

---

## 🚀 Cara Menjalankan

### 1️⃣ Jalankan Jenkins (via Docker)

```bash
docker run -d \
  -p 8080:8080 -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name jenkins \
  jenkins/jenkins:lts
```
