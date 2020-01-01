# https://blog.csdn.net/boling_cavalry/article/details/85395080

docker-compose up -d
docker exec kafka-docker_kafka_1 find / -name \*kafka_\* | head -1 | grep -o '\kafka[^\n]*'
docker exec kafka-docker_zookeeper_1 pwd
docker-compose scale kafka=4
docker ps
docker exec kafka-docker_kafka_1 kafka-topics.sh --create --topic topic001 --partitions 4 --zookeeper zookeeper:2181 --replication-factor 2
docker exec kafka-docker_kafka_3 kafka-topics.sh --list --zookeeper zookeeper:2181 topic001
docker exec kafka-docker_kafka_3   kafka-topics.sh   --describe  --topic topic001  --zookeeper zookeeper:2181
