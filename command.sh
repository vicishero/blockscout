mkdir -p ./dets
chmod 777 dets/



# 链接数据库
docker exec -it db psql -U blockscout -d blockscout

# 查看日志
docker logs -f --tail=100 backend

# 切换到容器
docker exec -it proxy bash

# 
curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' http://172.31.19.65:8545