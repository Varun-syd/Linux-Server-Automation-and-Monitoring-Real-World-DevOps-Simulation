A simulated production-like Linux environment built on CentOS, automating key DevOps tasks such as backups, monitoring, deployment, and service management.
This project demonstrates system administration, automation, and troubleshooting skills with real-world relevance.

🏗 Architecture
[Linux Server (CentOS)]
       ├── Apache Web Server (Website Hosting)
       ├── Bash Automation Scripts
       │       ├── Daily Backups (cron)
       │       ├── Disk / Memory Monitoring (cron)
       │       ├── Service Status Checks (systemd)
       ├── Git-based Deployment Pipeline
       │       └── Auto-pull via cron
       ├── SELinux & Permission Management
       └── Log Analysis & Alerting

Features

  Automated Daily Backups – Scheduled with cron, includes logging & error handling.
 Custom Monitoring Scripts – Tracks disk, memory, and service status with alerts.
  Website Deployment – Apache hosting with SELinux troubleshooting.
  Git Deployment Pipeline – Auto-pull updates via cron from GitHub.
  Secure Access – SSH key-based authentication for Git and server.
   Log Analysis – Custom log parsing for proactive troubleshooting.

Tech Stack

  OS: CentOS Linux

  Web Server: Apache HTTPD

   Scripting: Bash

   Version Control: Git (SSH-based authentication)

   Automation: cron, systemd

   Security: SELinux, permission hardening




Setup Instructions
sudo yum install httpd git
sudo systemctl enable httpd
sudo systemctl start httpd



Deploy Website
sudo rm -rf /var/www/html/*
sudo git clone git@github.com:yourusername/your-web-repo.git /var/www/html
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html



sudo chcon -R -t httpd_sys_content_t /var/www/html


set Up Backup Script
chmod +x scripts/daily_backup.sh
(crontab -l ; echo "0 2 * * * /path/to/scripts/daily_backup.sh") | crontab -


Set Up Monitoring Script
chmod +x scripts/system_monitor.sh
(crontab -l ; echo "*/5 * * * * /path/to/scripts/system_monitor.sh") | crontab -


📂 Repository Structure
.
├── scripts/
│   ├── daily_backup.sh
│   ├── system_monitor.sh
├── docs/
│   ├── architecture.png
│   └── screenshots/
├── logs/
│   ├── backup.log
│   ├── monitor.log
├── README.md
└── .gitignore



