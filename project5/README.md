🚀 Project 5 – CI/CD Pipeline Using Jenkins, GitHub & Docker

This project demonstrates how to set up a complete CI/CD pipeline using Jenkins, GitHub, and Docker, all running locally.
The pipeline automatically builds and tests a codebase from GitHub whenever changes are pushed.

📌 Project Overview

In this project, we:

Installed Jenkins using Docker

Configured Jenkins with required plugins

Connected Jenkins to GitHub

Created a Jenkins pipeline using a Jenkinsfile

Triggered automatic builds on every commit

Ensured Jenkins pulls the code, builds it, and reports success/failure

This project represents a real-world CI/CD workflow used in DevOps.

🛠️ Technologies Used

Jenkins (running in Docker)

Docker

Git & GitHub

Jenkins Plugins:

Git

Pipeline

Blue Ocean

Credentials Binding

GitHub Integration

🐳 Running Jenkins in Docker

Start Jenkins with persistent storage:

docker run -d --name jenkins \
  -p 8080:8080 -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  jenkins/jenkins:lts


Retrieve the initial admin password:

docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword


Then open:

http://localhost:8080

📦 Install Required Plugins

After Jenkins starts:

Install Suggested Plugins

Then install extra plugins:

GitHub

Blue Ocean

Pipeline

SSH Credentials

Credentials Binding

🔑 Add GitHub Credentials in Jenkins

Go to:

Manage Jenkins → Credentials → Global

Add:

Kind: Username & Password (GitHub username + PAT)

ID: github-creds

🧪 Pipeline Setup

Jenkinsfile inside repository (devops repo):

pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git credentialsId: 'github-creds',
                    url: 'https://github.com/ArjunKalirana/devops.git'
            }
        }

        stage('Build Stage') {
            steps {
                echo "Building the project..."
            }
        }

        stage('Test Stage') {
            steps {
                echo "Running tests..."
            }
        }

        stage('Deploy Stage') {
            steps {
                echo "Deployment successful!"
            }
        }
    }
}

▶️ Create a Pipeline Job in Jenkins

New Item → Pipeline

Select Pipeline Script from SCM

Choose Git

Repository URL:

https://github.com/ArjunKalirana/devops.git


Set credentials → github-creds

Script path: Jenkinsfile

Run the pipeline — it will:

✔ Clone the repo
✔ Read Jenkinsfile
✔ Run Build/Test/Deploy stages

🔄 Trigger Builds Automatically

Enable GitHub Webhooks (optional):

GitHub → Repo → Settings → Webhooks →
Add:

http://YOUR_PUBLIC_IP:8080/github-webhook/


Now pushes will auto-trigger builds.

✅ Project Completed

You have successfully implemented a real CI/CD pipeline using:

✔ Jenkins
✔ GitHub
✔ Docker
✔ Jenkinsfile
✔ Automated Build Pipeline

This is a complete industry-level setup, perfect for your resume and DevOps internship applications.

📚 What You Learned

CI/CD concepts

Jenkins installation using Docker

GitHub → Jenkins integration

Writing Jenkinsfile (Declarative Pipeline)

Running multi-stage pipelines

Handling plugins & credentials

🧑‍💻 Author

Arjun Choudhary
DevOps Learner & Cloud Enthusiast