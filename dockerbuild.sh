#/bin/bash!

docker build -t sadhal/audit-receiver-nodejs .

docker tag sadhal/audit-receiver-nodejs:latest 172.30.1.1:5000/contacts-be-dev/audit-receiver-nodejs

docker push 172.30.1.1:5000/contacts-be-dev/audit-receiver-nodejs