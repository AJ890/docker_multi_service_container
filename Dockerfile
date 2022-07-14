FROM python:3.7-slim
################## APP  #############################

ENV PYTHONUNBUFFERED 1
RUN export PYMSSQL_BUILD_WITH_BUNDLED_FREETDS=1
RUN apt-get update



COPY ./scripts/run.sh /code/scripts/run.sh

WORKDIR /code/scripts/

RUN chmod a+x run.sh

CMD ["./run.sh"]