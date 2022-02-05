FROM debian:unstable
LABEL maintainer="Brynjar Smari Bjarnason <binni@binnisb.com>"

ENV DEBIAN_FRONTEND noninteractive

ADD install.sh install.sh
RUN sh install.sh && rm install.sh

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]