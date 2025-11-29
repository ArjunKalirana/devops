# Terraform AWS EC2 Deployment – DevOps Project

This project uses **Terraform** to automatically create an AWS EC2 instance, install Docker, and deploy a Node.js application as a container.

## 🚀 Features
- Infrastructure as Code (IaC) using Terraform
- AWS EC2 instance provisioning
- User-data script to install Docker
- Automatically runs the container on server startup
- Everything deployed with a single command: `terraform apply`

---

## 📁 Project Structure
terraform-ec2-deployment
│── main.tf
│── variables.tf
│── outputs.tf
│── user-data.sh
│── README.md


---

## ▶ How to Run

1. Install Terraform  
2. Configure AWS CLI  
3. Run:


terraform init
terraform apply


4. Open the app:


http://PUBLIC-IP:3000


---

## 🛠 Technologies Used
- Terraform
- AWS EC2
- Docker
- Ubuntu
- Node.js Application (from previous project)

---

## 📌 Future Improvements
- Add Security Groups through Terraform
- Store state in S3 backend
- Use Terraform modules
- Add load balancer