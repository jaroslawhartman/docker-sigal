FROM nginxinc/nginx-unprivileged
# FROM nginx:stable

USER root

WORKDIR /opt

RUN apt-get update && apt-get install -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN rm -rf /usr/lib/python3.*/EXTERNALLY-MANAGED && pip3 install sigal

COPY run.sh sigal.conf.py auth.conf auth.htpasswd ./

ENV LANG C.UTF-8

USER 101:101

CMD ["./run.sh"]
