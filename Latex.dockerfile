FROM ubuntu:rolling
LABEL maintainer="Brynjar Smari Bjarnason <binni@binnisb.com>"

ADD install.sh install.sh
RUN chmod u+x install.sh && bash install.sh && rm install.sh

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]
