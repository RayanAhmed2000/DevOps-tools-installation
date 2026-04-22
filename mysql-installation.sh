#!/bin/bash

set -e  # Exit on error

echo "🔄 Updating system packages..."
sudo apt update -y

echo "📦 Installing MySQL Server..."
sudo DEBIAN_FRONTEND=noninteractive apt install -y mysql-server

echo "🚀 Starting MySQL service..."
sudo systemctl start mysql
sudo systemctl enable mysql
