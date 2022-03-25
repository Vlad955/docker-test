FROM alpine

COPY Test_Docker.sh /Test_Docker.sh
TEST_DOCKER ["/Test_Docker.sh"]