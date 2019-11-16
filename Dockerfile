FROM node:10.13.0

MAINTAINER Badri Nath Pathak(badri.pathak@mindtree.com)

RUN apt-get update && apt-get install -y \
    curl \
    git \
    vim

WORKDIR /usr/src/app

RUN mkdir -p /usr/src/app/CRUD-API-Node.js-Express-and-MongoDB

COPY . CRUD-API-Node.js-Express-and-MongoDB/


WORKDIR /usr/src/app/CRUD-API-Node.js-Express-and-MongoDB

RUN cd src && npm install


COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
