FROM ubuntu:18.04

COPY LICENSE README.md /

RUN apt-get update
RUN apt-get install -y rpm wget
RUN wget https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/1.2/linux_x86_64/snowflake-snowsql-1.2.9-1.x86_64.rpm
RUN rpm -i snowflake-snowsql-1.2.9-1.x86_64.rpm

CMD /usr/bin/snowsql
