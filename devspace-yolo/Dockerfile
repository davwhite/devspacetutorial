FROM registry.redhat.io/devspaces/udi-rhel8

RUN dnf -y  --setopt=tsflags=nodocs update && \
    dnf -y install libGL && \
    dnf -y clean all --enablerepo='*' && \
    curl -o tekton.tar.gz https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/latest/tkn-linux-amd64.tar.gz && \
    tar xzf tekton.tar.gz && \
    mv tkn /usr/local/bin && \
    rm tekton.tar.gz

RUN pip install --no-cache-dir \
    opencv-python ultralytics jinja2

USER 1001
