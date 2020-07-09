FROM alpine:3.12
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

ENV VERSION=3.8.0

ADD https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${VERSION}/kustomize_v${VERSION}_linux_amd64.tar.gz /usr/bin/kustomize.tar.gz
RUN tar -C /usr/bin -xzf /usr/bin/kustomize.tar.gz && rm /usr/bin/kustomize.tar.gz

RUN chmod +x /usr/bin/kustomize
