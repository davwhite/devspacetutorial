# FROM docker.io/nvidia/cuda:11.7.0-runtime-ubi8
FROM  docker.io/nvidia/cuda:11.8.0-runtime-ubi8

RUN dnf -y  --setopt=tsflags=nodocs update && \
    dnf -y install libGL python39 && \
    pip-3.9 install --upgrade pip && \
    dnf -y clean all --enablerepo='*' && \
    curl -o tekton.tar.gz https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/latest/tkn-linux-amd64.tar.gz && \
    tar xzf tekton.tar.gz && \
    mv tkn /usr/local/bin && \
    rm tekton.tar.gz

# RUN pip install --no-cache-dir \
#     opencv-python ultralytics jinja2

USER 1001
