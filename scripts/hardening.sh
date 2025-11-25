#!/bin/bash

echo "===== Linux Hardening Checker ====="

# Checking firewall
echo "[+] Checking firewall status..."
ufw status

# Checking SSH configuration
echo "[+] Checking SSH root login..."
grep -E "^PermitRootLogin" /etc/ssh/sshd_config

# Checking password policy
echo "[+] Checking password complexity..."
grep -E "^minlen|dcredit|ucredit|ocredit|lcredit" /etc/security/pwquality.conf

# Checking world-writable directories
echo "[+] Searching for world-writable directories..."
find / -type d -perm -0002 -print 2>/dev/null

echo "===== Scan Completed ====="
