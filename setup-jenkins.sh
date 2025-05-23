#!/bin/bash

echo "Starting Jenkins..."
docker-compose up -d

echo "Waiting for Jenkins to start..."
sleep 30

echo "Getting initial admin password..."
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

echo ""
echo "Jenkins is running at http://localhost:8080"
echo "Use the password above to unlock Jenkins"