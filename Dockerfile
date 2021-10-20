FROM ansible/ansible-runner

RUN yum install -y unzip

RUN curl -L https://github.com/mitogen-hq/mitogen/archive/refs/tags/v0.3.0rc1.zip -o mitogen.zip && \
    unzip mitogen.zip -d /opt
