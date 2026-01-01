# End-to-End DevOps Project on AWS

## Tech Stack
- Python (Flask)
- Docker & Docker Compose
- GitHub Actions (CI)
- Terraform (IaC)
- AWS EC2, IAM, Security Groups

## Architecture
GitHub → CI → Docker → AWS EC2

## How It Works
1. Code push triggers CI pipeline
2. Docker image is built
3. Terraform provisions AWS EC2
4. EC2 user data deploys the app automatically

## Key DevOps Concepts
- Infrastructure as Code
- CI/CD automation
- Cloud security (IAM, SG)
- Containerized deployment
