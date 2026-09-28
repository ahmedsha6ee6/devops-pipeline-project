# DevOps End-to-End Pipeline Project

## Project Overview
This repository contains a simple web-based application (CloudWorks Agency) integrated with a complete, automated DevOps CI/CD workflow.

## Pipeline Architecture
This project demonstrates a working end-to-end DevOps pipeline:
**Developer → Git Repository → Jenkins → Build & Test → Docker Image → Deployment → Monitoring**

### Technologies Used:
* **Application:** Astro.js / Node.js
* **Source Control:** Git & GitHub
* **CI/CD Server:** Jenkins (Automated build and test pipeline)
* **Containerization:** Docker (Multi-stage builds)
* **Configuration Management:** Ansible
* **Monitoring & Log Management:** Portainer

## Repository Structure
* `src/` & `public/`: Web application source code.
* `Dockerfile`: Multi-stage Docker configuration (Node.js build + NGINX hosting).
* `Jenkinsfile`: Declarative Jenkins pipeline automating the CI/CD stages.
* `ansible/deploy.yml`: Ansible playbook for automated deployment management.

## Monitoring
Container health, CPU/Memory telemetry, and log management are actively monitored using Portainer deployed on the host environment.
