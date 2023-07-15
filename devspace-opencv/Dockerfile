FROM registry.redhat.io/devspaces/udi-rhel8

RUN dnf -y  --setopt=tsflags=nodocs update && \
    dnf -y install libGL && \
    dnf -y clean all --enablerepo='*'

RUN pip install --no-cache-dir \
    opencv-python ultralytics

USER 1001
