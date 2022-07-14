FROM selenium/standalone-firefox-debug:3.141.59-20210422
ENV TZ 'Asia/Tokyo'
USER root
RUN echo $TZ > /etc/timezone && \
	rm /etc/localtime && \
	ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
	dpkg-reconfigure -f noninteractive tzdata
