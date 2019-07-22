FROM library/postgres:latest
MAINTAINER code-machina <gbkim1988@gmail.com>

RUN mkdir -p /docker-entrypoint-initdb.d/
# COPY ENTRYPOINT
# db\postgres\docker-entrypoint-initdb.d\entrypoint.sh
# db\postgres\docker-entrypoint-initdb.d\entrypoint.sh
COPY ./postgres/docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/

# RUN cp /docker-entrypoint-initdb.d/entrypoint.sh /sbin/entrypoint.sh
# ENV PG_APP_HOME="/etc/docker-postgresql" \
#     PG_VERSION=10 \
#     PG_USER=postgres \
#     PG_HOME=/var/lib/postgresql \
#     PG_RUNDIR=/run/postgresql \
#     PG_CERTDIR=/etc/postgresql/certs

# ENV PG_BINDIR=/usr/lib/postgresql/${PG_VERSION}/bin \
#     PG_DATADIR=${PG_HOME}/${PG_VERSION}/main



EXPOSE 5432/tcp

# ENTRYPOINT ["sh", "/sbin/entrypoint.sh"]



