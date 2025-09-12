## dnslookupdig
Simple Bash DNS lookup tool (A, AAAA, MX, CNAME, TXT)

# A small, easy-to-use Bash script for Kali/Linux that performs DNS lookups (A, AAAA, MX, CNAME, TXT) using dig and prints clean, exact answers. Ideal for quick recon during pentests or for simple DNS checks.
## Features

Queries A, AAAA, MX, CNAME, TXT records.

Returns clean, short output (uses dig +short).

Prints friendly messages when records are missing.

Simple, zero-dependency script (requires dig from dnsutils / bind-utils).

Includes an author signature: ANASCYBERSEC.

## Prerequisites
sudo apt update
sudo apt install dnsutils

## Installation
git clone https://github.com/Anasch-ch/dnslookupdig
cd ( repository )
chmod +x dnslookupdig.sh


## Usage
./dnslookupdig.sh
# Enter the domain name: example.com
