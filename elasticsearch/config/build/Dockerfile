FROM docker.elastic.co/elasticsearch/elasticsearch:8.11.3

RUN set -x && \
	sed -i -e 's/rootLogger.level = info/rootLogger.level = warn/' config/log4j2.properties && \
	bin/elasticsearch-plugin install analysis-icu && \
	sed -i -e 's/docker-cluster/elasticsearch/' config/elasticsearch.yml && \
	echo 'action.auto_create_index: "-lumisportal-*,+*"' >> config/elasticsearch.yml && \
	echo 'search.max_open_scroll_context: 100000' >> config/elasticsearch.yml && \
	echo 'http.max_initial_line_length: 10MB' >> config/elasticsearch.yml
