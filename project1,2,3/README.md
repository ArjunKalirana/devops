🚀 DevOps Project — Docker + Kubernetes (Minikube) + Node.js App

This repository contains a full DevOps pipeline setup:

✔ Node.js App
✔ Docker containerization
✔ Kubernetes Deployment + Service
✔ Minikube local cluster setup
✔ CI/CD (GitHub Actions) ready

Even if the Minikube cluster fails on Windows (common issue), the project structure and YAMLs are correct and production-ready.

📂 Project Structure
.
├── app.js
├── package.json
├── Dockerfile
├── .github/workflows/ci.yml
└── k8s/
    ├── namespace.yaml
    ├── deployment.yaml
    └── service.yaml

🟦 1. Node.js Application

Simple Express server that returns:

Hello from my DevOps Kubernetes Project!


Run locally:

npm install
npm start

🐳 2. Docker Setup

Build the image:

docker build -t devops-app:latest .


Run the container:

docker run -p 3000:3000 devops-app


Visit:

http://localhost:3000

☸️ 3. Kubernetes Manifests
Create Namespace
kubectl apply -f k8s/namespace.yaml

Deploy App
kubectl apply -f k8s/deployment.yaml

Expose via NodePort
kubectl apply -f k8s/service.yaml


Check pods:

kubectl get pods -n devops-project


Check service:

kubectl get svc -n devops-project

🚀 4. Minikube Access (If Working)

Get Minikube IP:

minikube ip


Access app:

http://<minikube-ip>:30080


⚠️ Note: Minikube often breaks on Windows due to Docker engine issues.
YAMLs are correct even if cluster fails.

🔧 5. CI/CD (GitHub Actions)

Workflow path:

.github/workflows/ci.yml


It performs:

Checkout code

Install Node modules

Build Docker image

Automatically triggers on:

push → main  
pull_request → main

📌 Future Enhancements

Push Docker image to Docker Hub

Add Horizontal Pod Autoscaler

Add Ingress for domain access

Add Prometheus + Grafana monitoring