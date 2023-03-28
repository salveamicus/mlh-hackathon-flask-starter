# escape=` (backtick)

FROM postgres:14.7
RUN apt-get update
RUN apt-get install -y python3.10
RUN apt-get install -y wget
RUN apt-get install -y man
RUN apt-get install -y docker
RUN apt-get install -y pip
RUN apt-get install -y git
RUN apt-get install -y postgresql postgresql-contrib
RUN apt-get install -y libpq-dev
RUN pg_createcluster 15 main
RUN service postgresql start

ENTRYPOINT [./startup.sh]



    