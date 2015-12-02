FROM node:4-onbuild

MAINTAINER Daehyun Kim "jabiers87@gmail.com"

# Install application dependencies.
RUN npm install coffee-script -g

RUN git clone https://github.com/jabiers/pushd.git /opt/pushd/
RUN cd /opt/pushd/ && npm install
ADD ./main.sh /usr/local/bin/main.sh
ADD ./settings.coffee /opt/pushd/settings.coffee

EXPOSE 80

CMD ["/usr/local/bin/main.sh"]
