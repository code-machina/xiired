# xiired : Delegating Time-Consuming Job

The List of Containers

- broker 
  - Image : redis:latest
  - Description: Celery's broker, and Django's Cache
  - Role
    - Broker (6379/tcp)
    - Cache (6379/tcp)
- Web
  - Image : gbkim1988/shred:0.4.2
  - Description: Task Management, Broker Dashboard & Management, and Task Scheduler
  - Role
    - Flower (5555/tcp)
    - Django (8282/tcp)
  - Depends_on
    - db
    - broker
- db
  - Image : postgres
  - Description : Django's Database
  - Role
    - Database (5432/tcp)
- worker
  - Image : gbkim19888/shred:0.4.2
  - Description : Task Worker && shipper
  - Features : Autoscaling
  - Role
    - Task Worker
    - Shipper 


Testing step by step



[References #1][https://www.capside.com/labs/deploying-full-django-stack-with-docker-compose/]