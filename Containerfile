ARG DEBIAN_MAJOR_VERSION="${DEBIAN_MAJOR_VERSION:-12}"

FROM quay.io/toolbx-images/debian-toolbox:${DEBIAN_MAJOR_VERSION}

ADD build.sh /tmp/build.sh

WORKDIR /tmp

RUN /tmp/build.sh \
    && rm /tmp/*
