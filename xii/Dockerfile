FROM gbkim1988/shred:0.4.2
MAINTAINER code-machina <gbkim1988@gmail.com>

RUN mkdir -p /app/xii
RUN pip install psycopg2-binary
WORKDIR /app/xii/

COPY ./ /app/xii
RUN ["chmod", "+x", "/app/xii/run.sh"]

EXPOSE 8282

CMD ["bash", "/app/xii/run.sh"]
