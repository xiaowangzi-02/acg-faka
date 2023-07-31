FROM webdevops/php-apache:8.2-alpine

COPY . /app

RUN echo session.save_handler = redis >> /opt/docker/etc/php/php.ini
RUN echo session.save_path = \"tcp://redis-10329.c302.asia-northeast1-1.gce.cloud.redislabs.com:10329?auth=a09EKr3ych6IDgXsu92GKZIvbvjfxwWv\" >> /opt/docker/etc/php/php.ini
# redis-cli -u redis://default:a09EKr3ych6IDgXsu92GKZIvbvjfxwWv@redis-10329.c302.asia-northeast1-1.gce.cloud.redislabs.com:10329
EXPOSE 80