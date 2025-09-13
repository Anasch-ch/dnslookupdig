#!/bin/bash
# DNS Record Lookup Script using dig
# Author: ANASCYBERSEC

echo "===================================="
echo "   DNS Lookup Tool (A, AAAA, MX, CNAME, TXT)"
echo "===================================="

# Show current date, day, and user
echo "📅 Date: $(date +"%A, %d %B %Y")"
echo "👤 Current User: $(whoami)"
echo "===================================="

# Ask for domain input
read -p "Enter the domain name: " domain

# Check if input is empty
if [ -z "$domain" ]; then
    echo "❌ No domain entered. Exiting..."
    exit 1
fi

echo -e "\n🔍 Fetching DNS records for: $domain\n"

# Query different record types
for record in A AAAA MX CNAME TXT
do
    echo "===== $record Record ====="
    result=$(dig $domain $record +short)
    if [ -z "$result" ]; then
        echo "No $record record found."
    else
        echo "$result"
    fi
    echo ""
done

echo "===================================="
echo "   Script by ANASCYBERSEC"
echo "   🔗 https://tinyurl.com/AnasCyberSec"
echo "===================================="
