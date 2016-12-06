FROM alpine:3.4

ENV IMAGE alpine

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    pip3 install --upgrade pip setuptools && \
# rm -r /root/.cache
    
# clean up
 apk del --purge \
	build-dependencies && \
rm -r /usr/lib/python*/ensurepip && \
rm -rf \
	/root/.cache \
	/tmp/*

# FROM alpine:edge
# MAINTAINER me! <I'll add some better contact stuff later>

# ENV IMAGE alpine

# RUN \
#  apk add --no-cache \
# 	curl \
# 	pip3 \
# 	python3 \
# 	wget && \

# # install build packages
#  apk add --no-cache --virtual=build-dependencies \
# 	autoconf \
# 	automake \
# 	make \
# 	python-dev && \

# # add pip packages
#  pip install --no-cache-dir -U \
# 	pip && \
#  LIBRARY_PATH=/lib:/usr/lib \
#  pip3 install --no-cache-dir -U \
# 	setuptools \
# 	virtualenv && \

# # clean up
#  apk del --purge \
# 	build-dependencies && \
#  rm -rf \
# 	/root/.cache \
# 	/tmp/*
