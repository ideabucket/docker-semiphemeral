#syntax=docker/dockerfile:1

FROM alpine

EXPOSE 8080/tcp

RUN apk add python3 py3-pip git && \
	pip3 install tweepy~=3.10 semiphemeral

ENTRYPOINT ["/usr/bin/semiphemeral"]
CMD ["configure", "--host=0.0.0.0"]
