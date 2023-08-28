FROM registry.access.redhat.com/ubi9/python-39

USER 0
RUN curl -o tekton.tar.gz https://mirror.openshift.com/pub/openshift-v4/clients/pipeline/latest/tkn-linux-amd64.tar.gz && \
    tar xzf tekton.tar.gz --no-same-owner && \
    mv tkn /usr/local/bin && \
    rm tekton.tar.gz && \
    curl -o oc.tgz https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/stable/openshift-client-linux.tar.gz && \
    tar xzf oc.tgz && \
    mv oc /usr/local/bin && \
    rm oc.tgz && \
    curl https://dl.min.io/client/mc/release/linux-amd64/mc -o mc && \
    chmod +x mc && \
    mv mc /usr/local/bin

# RUN pip install --no-cache-dir \
#     opencv-python ultralytics jinja2

USER 1001
