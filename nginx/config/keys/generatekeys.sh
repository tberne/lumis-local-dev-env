#!/bin/bash

openssl \
	req \
	-newkey \
	rsa:2048 \
	-nodes \
	-keyout \
	key.key \
	-x509 \
	-days 15000 \
	-config openssl.cnf \
	-subj '//CN=pclumis153.lumis.com.br' \
	-out certificate.crt

openssl \
	dhparam \
	-out dhparam.pem 128

openssl pkcs12 -export -out certificate.pfx -inkey key.key -in certificate.crt -passout pass:lumisadm