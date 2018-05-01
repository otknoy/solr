FROM solr:7.3.0
MAINTAINER Naoya Otsuka <otknoy@gmail.com>

ADD coredir /opt/solr/server/solr/configsets/mine

ENTRYPOINT ["docker-entrypoint.sh", "solr-precreate", "items", "/opt/solr/server/solr/configsets/mine"]
CMD ["solr-foreground"]
