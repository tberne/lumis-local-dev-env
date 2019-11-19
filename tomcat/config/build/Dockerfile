FROM tomcat:9.0.24-jdk12-adoptopenjdk-openj9

ENV CATALINA_OPTS="-Xmx768m \
	-Xms768m \
	-Xss384k \
	-XX:+AlwaysPreTouch \
	-Dio.netty.noUnsafe=true \
	-Dio.netty.noKeySetOptimization=true \
	-Dio.netty.recycler.maxCapacityPerThread=0 \
	-Dio.netty.allocator.maxOrder=5 \
	-Dlog4j.shutdownHookEnabled=false \
	-Dlog4j2.disable.jmx=true \
	-Dlog4j.skipJansi=true \
	-Dlumis.portal.lumisDataPath=/lumis/lumisdata"

ENV JPDA_ADDRESS="0.0.0.0:8000"
    
RUN set -x && \
	sed -i -e 's@shared.loader=@shared.loader=/usr/local/tomcat/shared,/usr/local/tomcat/shared/*.jar@' conf/catalina.properties && \
	sed -i -e 's@</Host>@<Valve className="org.apache.catalina.valves.RemoteIpValve" protocolHeader="x-forwarded-proto" remoteIpHeader="x-forwarded-for" remoteIpProxiesHeader="x-forwarded-by"/></Host>@' conf/server.xml

EXPOSE 8000 8080
CMD ["catalina.sh", "jpda", "run"]
