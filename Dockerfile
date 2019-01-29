# set the base image
FROM python:3.6

# File Author / Maintainer
MAINTAINER Sankar

#add project files to the usr/src/app folder
ADD . /usr/src/app

COPY start.sh /usr/src/app/start.sh

#set directoty where CMD will execute
WORKDIR /usr/src/app

RUN chmod +x start.sh

# Install pre-requisite packages
RUN pip install -r requirements.txt

# Expose ports
EXPOSE 8000

ENTRYPOINT ./start.sh
