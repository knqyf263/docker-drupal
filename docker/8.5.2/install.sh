#!/bin/sh
	
DRUPAL_VERSION=8.5.2
DRUPAL_MD5=c85c6ec800100d458fad6b9469e2fd8b

mkdir drupal
cd drupal
curl -fSL "https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz" -o drupal.tar.gz \
	&& echo "${DRUPAL_MD5} *drupal.tar.gz" | md5sum -c - \
	&& tar -xz --strip-components=1 -f drupal.tar.gz \
	&& rm drupal.tar.gz \
