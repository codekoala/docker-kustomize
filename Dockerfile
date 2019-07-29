FROM alpine:3.10
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

ENV VERSION=3.1.0

ADD https://github.com/kubernetes-sigs/kustomize/releases/download/v${VERSION}/kustomize_${VERSION}_linux_amd64 /usr/bin/kustomize

RUN chmod +x /usr/bin/kustomize
