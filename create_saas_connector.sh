#!/bin/bash


#hello
echo "Let's create your saas_connector"
# Get username and password from the user
read -p "Enter username: " username
read -s -p "Enter password: " password
echo ""

# Construct the URL 
url="https://www.cloudefender.co/create_saas_connector?username=$username&password=$password"

# Path to your self-signed certificate file
cert_file="ssl_config.pem"  # Replace with the actual path

# Make the GET request, using the certificate for verification
response=$(curl -s --cacert "$cert_file" "$url")

# Print the response
echo "Your saas_connector is:$response"

