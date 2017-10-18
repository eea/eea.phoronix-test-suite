FROM ubuntu:xenial
MAINTAINER Antonio De Marinis <demarinis@eea.europa.eu>

RUN apt-get update && apt-get -y install phoronix-test-suite
ADD run.sh /run.sh
RUN chmod a+x /run.sh
ENTRYPOINT /run.sh
