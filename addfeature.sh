#!/bin/sh
cd yerli-robot
cat > .config.env << EOF1
PORT=8000
NODE_ENV=production
PORT_LIST=[{"id":"server1","source_port":8000,"source_ip":"171.22.184.122"},{"id":"server2","source_port":8001,"source_ip":"171.22.184.123"},{"id":"server3","source_port":8002,"source_ip":"171.22.184.124"},{"id":"server4","source_port":8003,"source_ip":"171.22.184.125"},{"id":"server5","source_port":8004,"source_ip":"171.22.184.126"}]


#Redis Conf
IS_REDIS_AUTH=no
REDIS_HOST=178.157.11.99
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
REDIS_IS_EMPTY=ISEMPTY

#Server
SERVER=1

#GIT
GIT_USERNAME=cemre-2187
GIT_PASSWORD=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

#ELASTICSEARCH
ES_SERVER=http://178.157.11.99:9200/
ES_USERNAME=elastic
ES_PASSWORD=ErRyan..26041988

#ROBOT_TYPES
#detail-main
ROBOT_TYPE=detail
ROBOT_DUTY=normal
ROBOT_OFFSET=0
ROBOT_NAME=$1

REDIS_PLATFORMS_KEY=PLATFORMS:


#PROXY

IS_PROXY_USER=no
PROXY_USERNAME=cnazlum
PROXY_PASSWORD=969dc6-c4c19f-ed7370-81515a-53fe33
PROXY_HOST=private.residential.proxyrack.net
PROXY_PORT=10005


#GATEWAY
DEVELOPMENT_GATEWAY_PATH=http://localhost:8000/api/v1/gateway/
PRODUCTION_GATEWAY_PATH=https://robot.pintirim.com/api/v1/gateway/


#MAIL
MAIL_USER=noreply.emparazon@gmail.com
MAIL_PASSWORD=Playtime12!

#MAIN IP
MAIN_IP=178.157.11.99
EOF1
pm2 restart index.js
