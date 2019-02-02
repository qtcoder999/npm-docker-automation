chdir /d "C:\Users\%username%\ecom-sapient-sandbox\"
docker-machine.exe env default
docker login -u _json_key -p "$(cat sandbox-user-3a7f1ed4ce34.json)" https://us.gcr.io
docker-compose.exe -f docker-nginx-compose.yml up -d
docker-compose.exe -f docker-xt-compose.yml up -d
