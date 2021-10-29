FROM ansible/ansible-runner

RUN curl -L https://github.com/mitogen-hq/mitogen/archive/refs/tags/v0.2.9.tar.gz -o mitogen.tgz && \
    tar -xzf mitogen.tgz -C /opt && \
    ln -s /opt/mitogen-0.2.9 /opt/mitogen
