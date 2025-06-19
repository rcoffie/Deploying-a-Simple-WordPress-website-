

# ✅ Project TODO List – WordPress on Azure

Track tasks for each phase of the project. Mark `[x]` when complete, `[ ]` if still pending.

---

## 📦 Phase 1: Infrastructure with Terraform

* [ ] Set up Azure account & configure Azure CLI
* [ ] Create GitHub repo: `terraform-azure-wordpress`
* [ ] Write Terraform scripts to provision:

  * [ ] Azure Resource Group
  * [ ] Virtual Network & Subnet
  * [ ] Ubuntu VM with SSH
  * [ ] MySQL Database (Azure or self-hosted)
  * [ ] NSG rules (HTTP, HTTPS, SSH)
* [ ] Store secrets in GitHub Secrets
* [ ] Test `terraform plan` and `terraform apply`

---

## ⚙️ Phase 2: Server Setup with Ansible

* [ ] Create GitHub repo: `ansible-wordpress-setup`
* [ ] Write Ansible playbook to install & configure:

  * [ ] Nginx + PHP-FPM
  * [ ] WordPress via `wp-cli`
  * [ ] MySQL (if self-hosted)
  * [ ] Let’s Encrypt SSL with Certbot
  * [ ] Security hardening (UFW, fail2ban, SSH config)
* [ ] Test playbook on Azure VM

---

## 🔁 Phase 3: CI/CD with GitHub Actions

* [ ] Create workflow file: `.github/workflows/deploy-wordpress.yml`
* [ ] Configure actions to:

  * [ ] Trigger on push to `main`
  * [ ] Apply Terraform
  * [ ] Run Ansible
  * [ ] Perform basic health checks
* [ ] Set up Slack or Email notifications

---

## 📊 Phase 4: Monitoring & Optimization

* [ ] Enable Azure Monitor for VM and MySQL
* [ ] Configure Nginx caching
* [ ] Set up automated backups (files + database)
* [ ] Run performance/load tests

---

## 🔄 Phase 5: Maintenance & Improvements

* [ ] Automate OS & WordPress updates
* [ ] Schedule routine Terraform/Ansible runs
* [ ] Add Blue/Green deployment support
* [ ] Create staging environment

---

## 🧹 General & Admin Tasks

* [ ] Write full project `README.md`
* [ ] Add LICENSE and CODEOWNERS (if public)
* [ ] Document architecture and deployment flow
* [ ] Create user guide for non-technical stakeholders

---

Let me know if you'd like this converted into a GitHub Project board, Trello-style layout, or downloadable checklist!
