FROM debian:12 as base

RUN apt update && apt install -y git dnsmasq bind9-dnsutils

RUN mkdir -p /srv/dnsmasq.d
COPY hosts /srv/
RUN echo "addn-hosts=/srv/hosts" >> /etc/dnsmasq.conf
RUN echo "conf-dir=/srv/dnsmasq.d" >> /etc/dnsmasq.conf
RUN echo "server=1.1.1.1" >> /srv/dnsmasq.d/usptream.conf

COPY entrypoints/ /
RUN chmod +x /*.sh


FROM base AS production

EXPOSE 53

CMD /entrypoint.sh


FROM base AS test

CMD /test.sh
