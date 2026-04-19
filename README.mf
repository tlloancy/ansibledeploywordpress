# WordPress Ansible Playbook

This Ansible playbook automates the installation and configuration of WordPress on Debian-based, RedHat-based (including Fedora), and Arch Linux systems. It sets up a secure WordPress environment with Apache as the primary web server, Nginx as a reverse proxy, MariaDB as the database, UFW or Firewalld for firewall management, Fail2Ban for security, and Certbot for SSL certificates. The playbook is distribution-agnostic, detecting the operating system and adapting configurations accordingly.

## Features
- **Supported Distributions**: Debian (e.g., Buster, Bullseye, Bookworm, Trixie), RedHat/Fedora, Arch Linux
- **Web Server**: Apache (`apache2` for Debian, `httpd` for RedHat/Fedora, `apache` for Arch)
- **Reverse Proxy**: Nginx
- **Database**: MariaDB with automatic restart configuration
- **Firewall**: UFW (Debian/Arch) or Firewalld (RedHat/Fedora)
- **Security**: Fail2Ban with XML-RPC and GET DoS protection
- **SSL**: Certbot for Let's Encrypt certificates with Cloudflare DNS validation
- **Cron Jobs**: Automated Certbot renewal and Apache/Nginx restarts
- **WordPress Configuration**: Debian uses the native `wordpress` package with host-specific configs; RedHat/Fedora and Arch download WordPress manually

## Prerequisites
- Ansible installed on the control node (`ansible --version`)
- Root or sudo access to the target server
- A domain name configured in DNS (preferably with Cloudflare for initial DNS validation)
- Inventory file (`hosts.ini`) with the target server and domain name
- SSH access to the target server

### Example Inventory File (`hosts.ini`)
```ini
[wordpress_servers]
myblog.example.com ansible_host=<server_ip> ansible_user=root
```

## License
This project is licensed under the **Apache License 2.0**.
Copyright (c) 2026 **Tlloancy**. 

See the [LICENSE](LICENSE) file for the full license text. Attribution to the original author is required for any redistribution or integration.
