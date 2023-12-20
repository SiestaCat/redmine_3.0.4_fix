FROM redmine:3.0.4

RUN rm /docker-entrypoint.sh

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh