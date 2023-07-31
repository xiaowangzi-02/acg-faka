FROM webdevops/php-apache:8.2-alpine

COPY . /app

RUN [ "sh", "-c", "chmod -R 777 /app" ]

# RUN echo session.save_handler = redis >> /opt/docker/etc/php/php.ini
# RUN echo session.save_path = \"tcp://zeabur-gcp-asia-east1-1.clusters.zeabur.com:32635?auth=3GN0ur47e68Q\" >> /opt/docker/etc/php/php.ini
# redis-cli -u redis://default:a09EKr3ych6IDgXsu92GKZIvbvjfxwWv@redis-10329.c302.asia-northeast1-1.gce.cloud.redislabs.com:10329
# redis-cli -h zeabur-gcp-asia-east1-1.clusters.zeabur.com -p 32635 -a 3GN0ur47e68Q
EXPOSE 80