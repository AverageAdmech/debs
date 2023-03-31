paste
Search...

LOGIN SIGN UP
Advertisement
Guest User
Untitled
A GUEST
MAR 30TH, 2023
9
0
NEVER
ADD COMMENT
Not a member of Pastebin yet? Sign Up, it unlocks many cool features!
0.60 KB | None |  
  
#!/bin/bash
 
# Prompt for user credentials
read -p "Enter username: " username
read -s -p "Enter password: " password
echo
read -p "Enter IP address: " ipaddress
 
# Prompt for domain join
read -p "Join domain? (y/n): " join_domain
 
if [[ $join_domain == "y" || $join_domain == "Y" ]]; then
  read -p "Enter domain: " domain
  # Join domain
  echo "Joining domain $domain..."
  # Insert code here to join the domain
  domain_arg="/d:$domain"
else
  domain_arg=""
fi
 
# Connect to remote machine
echo "Connecting to $ipaddress..."
xfreerdp /u:$username /p:$password /v:$ipaddress $domain_arg
 
