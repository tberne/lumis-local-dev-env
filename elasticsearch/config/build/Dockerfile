FROM docker.elastic.co/elasticsearch/elasticsearch-oss:7.1.1

RUN set -x && \
	sed -i -e 's/rootLogger.level = info/rootLogger.level = warn/' config/log4j2.properties && \
	bin/elasticsearch-plugin install analysis-icu && \
	sed -i -e 's/docker-cluster/elasticsearch/' config/elasticsearch.yml && \
	echo 'action.auto_create_index: "-lumisportal-*,+*"' >> config/elasticsearch.yml && \
	echo 'search.max_open_scroll_context: 100000' >> config/elasticsearch.yml
