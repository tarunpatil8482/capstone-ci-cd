#!/bin/bash
echo "Starting deployment to staging..."

docker-compose pull
docker-compose down
docker-compose up -d --build

echo "Deployment completed successfully"
