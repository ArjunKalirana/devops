📦 DevOps Project 1 — Dockerized Web App + CI Pipeline
🚀 Overview

This is my first DevOps project.
It includes:

A simple Node.js web application

Docker containerization

GitHub Actions CI pipeline

Automated build on every push to main

🛠 Tech Stack

Node.js

Docker

GitHub Actions

Express.js

📁 Project Structure
app.js
package.json
Dockerfile
.github/workflows/ci.yml

🐳 Run Docker Container
docker build -t devops-app .
docker run -p 3000:3000 devops-app


Visit:

http://localhost:3000

⚙ CI Pipeline

GitHub Actions automatically runs on:

Every push to main

Every pull request

It performs:

Dependency install

Build check

Docker build

📌 Future Improvements

Add automated tests

Push Docker image to Docker Hub

Add CD pipeline

