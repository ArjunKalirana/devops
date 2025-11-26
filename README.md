🚀 DevOps Project — Dockerized Node.js App + AWS EC2 Deployment + CI Pipeline

This is my DevOps portfolio project, where I:

✅ Built a Node.js web application
✅ Containerized it using Docker
✅ Created a CI pipeline (GitHub Actions)
✅ Deployed it on AWS EC2
✅ Exposed it publicly using correct Security Group rules

This project shows end-to-end beginner DevOps workflow.

📁 Project Structure
/devops-docker-project
 ├── app.js
 ├── package.json
 ├── Dockerfile
 ├── .github/workflows/ci.yml
 └── README.md

🟦 1. Node.js Application

Simple Express server:

app.get("/", (req, res) => {
  res.send("Hello from my DevOps Project deployed on AWS EC2!");
});


Run locally:

npm install
npm start

🟩 2. Docker Setup

Dockerfile:

FROM node:18
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]


Build Docker image:

docker build -t devops-app .


Run container:

docker run -p 3000:3000 devops-app

🟧 3. GitHub Actions — CI Pipeline

File: .github/workflows/ci.yml

This pipeline:

✔ Installs Node
✔ Installs dependencies
✔ Builds Docker image
✔ Verifies app builds successfully

Triggers on every push to main branch.

🟨 4. AWS EC2 Deployment (MOST IMPORTANT PART)
Step A — Launch EC2 Instance

Ubuntu Server 22.04

Create key pair (devops-key.pem)

Create security group

Allow Port 22 (SSH)

Allow Port 3000 (Custom TCP)

Allow Port 80 (optional)

Step B — Connect to EC2
ssh -i "devops-key.pem" ubuntu@YOUR_PUBLIC_IP

Step C — Install Docker
sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
sudo reboot


Login again and test:

docker --version

Step D — Clone your project on EC2
git clone https://github.com/YOUR-USERNAME/YOUR-REPO.git
cd YOUR-REPO

Step E — Build and run
docker build -t devops-app .
docker run -p 3000:3000 devops-app

🌐 5. Public URL

Your app is live here:

http://YOUR_PUBLIC_IP:3000


Example:

http://13.203.217.126:3000

⭐ 6. What I Learned

Docker containerization

Exposing containers using port mapping

GitHub Actions CI pipeline

AWS EC2 setup & SSH

Security Groups & inbound rules

Deploying Docker apps on cloud

Linux commands

Real DevOps project workflow

📌 7. Future Improvements

Push Docker image to Docker Hub

Add automated unit tests

Add CD pipeline

Deploy to Kubernetes cluster

Terraform automation