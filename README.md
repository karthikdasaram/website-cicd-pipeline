# 🚀 End-to-End DevOps CI/CD Pipeline using Jenkins, Docker, Kubernetes, Ansible & AWS

## 📌 Project Overview

This project demonstrates a complete **End-to-End DevOps CI/CD Pipeline** that automates the entire software delivery lifecycle—from source code management to deployment on a Kubernetes cluster.

The pipeline integrates **GitHub, Jenkins, Docker, Docker Hub, Kubernetes, Ansible, Terraform, and AWS EC2** to build, package, and deploy a static website automatically.

---

# 🏗️ Architecture

```
                    GitHub Repository
                           │
                           ▼
                    Jenkins Pipeline
                           │
          ┌────────────────┼────────────────┐
          │                │                │
          ▼                ▼                ▼
    Build Docker      Push to Docker     Deploy to
       Image              Hub            Kubernetes
                                              │
                                              ▼
                                  Kubernetes Cluster
                                ┌─────────────────────┐
                                │ Control Plane Node  │
                                └─────────┬───────────┘
                                          │
                            ┌─────────────┴─────────────┐
                            │                           │
                     Worker Node 1              Worker Node 2
```

---

# 🛠️ Technologies Used

- AWS EC2
- Terraform
- Ansible
- Linux (Ubuntu)
- Git
- GitHub
- Jenkins
- Docker
- Docker Hub
- Kubernetes
- Apache Web Server

---

# 📂 Repository Structure

```
website-cicd-pipeline/
│
├── Dockerfile
├── Jenkinsfile
├── deploy.yaml
├── svc.yaml
├── playbook.yaml
├── K-master.sh
├── main.tf
├── index.html
├── images/
└── README.md
```

---

# ⚙️ Infrastructure Setup

## AWS

- 4 Ubuntu EC2 Instances
    - Jenkins Server
    - Kubernetes Master
    - Kubernetes Worker 1
    - Kubernetes Worker 2

---

# 🚀 CI/CD Pipeline Flow

```
Developer
     │
     ▼
Git Push
     │
     ▼
GitHub Repository
     │
     ▼
Jenkins Pipeline
     │
     ├── Checkout Code
     ├── Build Docker Image
     ├── Docker Login
     ├── Push Image to Docker Hub
     ├── Deploy to Kubernetes
     └── Verify Deployment
     │
     ▼
Kubernetes Cluster
```

---

# 📦 Jenkins Pipeline Stages

### ✅ Checkout

Clones the latest source code from GitHub.

---

### ✅ Build Docker Image

Builds the Docker image using the Dockerfile.

```
docker build -t karthik19112001/website-app:latest .
```

---

### ✅ Docker Login

Authenticates securely with Docker Hub using Jenkins credentials.

---

### ✅ Push Docker Image

Pushes the latest Docker image to Docker Hub.

```
docker push karthik19112001/website-app:latest
```

---

### ✅ Deploy to Kubernetes

Deploys the application using Kubernetes Deployment and Service manifests.

```
kubectl apply -f deploy.yaml
kubectl apply -f svc.yaml
```

---

### ✅ Verify Deployment

Checks deployment rollout status.

```
kubectl rollout status deployment/website-deployment
kubectl get pods
kubectl get svc
```

---

# ☸ Kubernetes Configuration

### Deployment

- 2 Replicas
- Docker Image from Docker Hub
- Apache Web Server
- Container Port 80

---

### Service

- NodePort Service
- Port 80
- NodePort 30008

---

# 🐳 Docker

Docker image:

```
karthik19112001/website-app:latest
```

Docker Hub stores the application image which is pulled by Kubernetes during deployment.

---

# 🔄 Ansible

Ansible was used to automate server configuration and software installation.

Tasks automated:

- Package Installation
- Server Configuration
- Script Execution

---

# 🌍 Terraform

Terraform was used to provision AWS infrastructure.

Resources:

- EC2 Instances
- Security Groups
- Networking

---

# 📸 Project Screenshots

Add screenshots here.

## AWS Infrastructure
![AWS Infrastructure](AWS%20Infrastructure.png)

## GitHub Repository
![GitHub Repository](Github%20Repository.png)

## Jenkins Pipeline
![Jenkins Pipeline](Jenkins%20Pipeline.png)

## Docker Hub
![Docker Hub](Docker%20Hub.png)

## Running Pods
![Running Pods](Running%20pods.png)

## Website Running
![Website Running](Website%20Running.png)


---

# 📈 Features

- Infrastructure as Code using Terraform
- Configuration Management using Ansible
- Continuous Integration using Jenkins
- Containerization using Docker
- Image Registry using Docker Hub
- Continuous Deployment using Kubernetes
- Automated End-to-End CI/CD Pipeline
- Highly Scalable Deployment using Kubernetes Replicas

---

# 🎯 Learning Outcomes

Through this project I gained practical experience in:

- Linux Administration
- AWS Cloud
- Git & GitHub
- Jenkins Pipelines
- Docker
- Docker Hub
- Kubernetes
- Terraform
- Ansible
- CI/CD Automation
- Infrastructure Automation
- Container Orchestration

---

# 📚 Future Enhancements

- SonarQube Integration
- Prometheus Monitoring
- Grafana Dashboards
- Nginx Ingress Controller
- ArgoCD GitOps
- Helm Charts
- SSL using Let's Encrypt
- Automated Rollbacks

---

# 👨‍💻 Author

**Karthik Dasaram**


---

# ⭐ If you found this project useful, please give it a Star!
