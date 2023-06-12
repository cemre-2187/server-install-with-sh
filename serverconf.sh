sudo apt update
sudo apt upgrade -y
curl -sL https://deb.nodesource.com/setup_18.x | sudo bash -
sudo apt -y install nodejs
node  -v
git clone https://cemre-2187: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@github.com/RexvenCompany/e-commerce-robot.git
cd e-commerce-robot
npm install
cat > .config.env << EOF1
PORT=8001
NODE_ENV=development
PORT_LIST=[{"id":"server1","source_port":8000,"source_ip":"171.22.184.122"},{"id":"server2","source_port":8001,"source_ip":"171.22.184.123"},{"id":"server3","source_port":8002,"source_ip":"171.22.184.124"},{"id":"server4","source_port":8003,"source_ip":"171.22.184.125"},{"id":"server5","source_port":8004,"source_ip":"171.22.184.126"}]

#DB Credentials
DB_NAME=discount
DB_ADDRESS=171.22.184.122
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD="Playtime12"

#Redis Conf
IS_REDIS_AUTH=no
REDIS_HOST=171.22.184.122
REDIS_PORT=6379
REDIS_USERNAME=default
REDIS_PASSWORD=Ankara.06
REDIS_HTTP_USER=root
REDIS_HTTP_PASSWORD=root
REDIS_COMMANDER_PORT=8081
REDIS_KEY=BIV:
REDIS_CATEGORIES_KEY=CATEGORIES:
REDIS_PRODUCTS_KEY=PRODUCTS:
REDIS_SELLERS_KEY=SELLERS:

#Server
SERVER=1

#GIT
GIT_USERNAME=cemre-2187
GIT_PASSWORD=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

#ELASTICSEARCH
ES_SERVER=http://171.22.184.122:9200
ES_USERNAME=elastic
ES_PASSWORD=ErRyan..26041988

#ROBOT_TYPES
#detail-main
ROBOT_TYPE=detail
ROBOT_DUTY=normal
ROBOT_OFFSET=$2
ROBOT_NAME=$1

REDIS_PLATFORMS_KEY=PLATFORMS:

#PROXY

IS_PROXY_USER=no
PROXY_USERNAME=cnazlum
PROXY_PASSWORD=969dc6-c4c19f-ed7370-81515a-53fe33
PROXY_HOST=private.residential.proxyrack.net
PROXY_PORT=10005


#GATEWAY
GATEWAY_PATH=http://171.22.184.122/api/v1/gateway/
EOF1
sudo npm i -g pm2
pm2 start index.js
