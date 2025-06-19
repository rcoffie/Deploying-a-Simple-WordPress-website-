# 🌐 WordPress on Azure — Automated Deployment with Terraform, Ansible & GitHub Actions

This project provides a **fully automated setup** to deploy a production-ready **WordPress website** on **Microsoft Azure** using:

* **Terraform** for Infrastructure as Code (IaC)
* **Ansible** for server configuration and WordPress installation
* **GitHub Actions** for CI/CD automation
* **Ubuntu VM**, **Nginx**, and **MySQL** as the hosting stack

---

## 📁 Project Structure

```bash
.
├── terraform-azure-wordpress/      # Terraform code to provision Azure resources
├── ansible-wordpress-setup/        # Ansible playbook for server setup & WordPress install
├── .github/workflows/
│   └── deploy-wordpress.yml        # CI/CD workflow for automation
└── README.md                       # Project overview
```


🚀 Features

    🔧 Infrastructure provisioning with Terraform

    🔒 Secrets managed via GitHub Secrets

    📦 WordPress deployment with Ansible

    🌐 Web server setup using Nginx + PHP

    🔁 MySQL database (Azure-managed or self-hosted)

    ✅ SSL via Let’s Encrypt (Certbot)

    🔄 CI/CD pipeline via GitHub Actions

    📊 Monitoring & backups with Azure Monitor

---

## 🚀 Features

* 🔧 Infrastructure provisioning with **Terraform**
* 🔒 Secrets managed via **GitHub Secrets**
* 📦 WordPress deployment with **Ansible**
* 🌐 Web server setup using **Nginx + PHP**
* 🔁 MySQL database (Azure-managed or self-hosted)
* ✅ SSL via **Let’s Encrypt (Certbot)**
* 🔄 CI/CD pipeline via **GitHub Actions**
* 📊 Monitoring & backups with **Azure Monitor**

---

## ⚙️ Prerequisites

Before using this project, make sure you have:

* ✅ [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
* ✅ [Terraform](https://www.terraform.io/downloads)
* ✅ [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
* ✅ [GitHub CLI](https://cli.github.com/)
* ✅ Azure subscription with access to create resources
* ✅ A domain name (optional, for SSL)

---

## 🛠 Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/wordpress-on-azure.git
cd wordpress-on-azure
```

### 2. Configure Terraform

* Navigate to `terraform-azure-wordpress/`
* Set your variables in `terraform.tfvars` or environment variables
* Initialize and apply:

```bash
terraform init
terraform apply
```

### 3. Set Up GitHub Secrets

In your repo settings, add the following secrets:

* `AZURE_CLIENT_ID`
* `AZURE_CLIENT_SECRET`
* `AZURE_SUBSCRIPTION_ID`
* `AZURE_TENANT_ID`
* `SSH_PRIVATE_KEY`
* `MYSQL_PASSWORD`

### 4. Configure Ansible

* Navigate to `ansible-wordpress-setup/`
* Edit `inventory.ini` with your VM's public IP
* Run playbook manually or rely on GitHub Actions:

```bash
ansible-playbook -i inventory.ini site.yml
```

### 5. Trigger CI/CD (Optional)

Push changes to `main` to trigger full deployment:

```bash
git add .
git commit -m "Trigger deployment"
git push origin main
```

---

## 📊 Monitoring & Backups

* **Azure Monitor** is used for resource tracking (CPU, memory, DB performance).
* Backups can be scheduled using CRON jobs for:

  * WordPress files
  * MySQL database dumps

---

## 🧱 Tech Stack

| Component      | Technology        |
| -------------- | ----------------- |
| Infrastructure | Terraform + Azure |
| Provisioning   | Ansible           |
| CI/CD          | GitHub Actions    |
| OS             | Ubuntu Server     |
| Web Server     | Nginx + PHP-FPM   |
| CMS            | WordPress         |
| Database       | MySQL             |
| Monitoring     | Azure Monitor     |

---

## 🗓 Project Timeline

This project was built in 5 key phases:

1. **Terraform Setup** – Azure infrastructure
2. **Ansible Config** – Nginx, WordPress, MySQL
3. **CI/CD Pipeline** – GitHub Actions workflow
4. **Optimization** – Monitoring, SSL, backups
5. **Maintenance** – Updates & scaling

---

## ✅ Status

> ✅ Live & ready for deployment.
> 🛠 Actively maintained & open for contributions.

---

## 🤝 Contributing

Feel free to fork this repo and submit a pull request! Suggestions, improvements, and issue reports are welcome.

---





## ✉️ Contact

For questions or collaboration:
**\[[rcoffie22@gmail.com](rcoffie22@gmail.com)]**

---

```


```
