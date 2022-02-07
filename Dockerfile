FROM ubuntu:rolling
LABEL maintainer="Brynjar Smari Bjarnason <binni@binnisb.com>"

ENV TZ=Europe/Stockholm
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD install.sh install.sh
RUN chmod u+x install.sh && bash install.sh && rm install.sh

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]
