FROM debian:squeeze

ADD files /

RUN apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get install --no-install-recommends -y \
         kpicosim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD /srv/wrapper.sh
