FROM centos:7.2.1511
RUN yum install -y wget unzip git && yum clean all
ENV AWS_DOWNLOAD_URL https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
RUN cd /tmp && \
  wget -q $AWS_DOWNLOAD_URL && \
  unzip awscli-bundle.zip && \
  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \
  rm -r awscli-bundle/ awscli-bundle.zip
ENV JQ_DOWNLOAD_URL https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
RUN cd /tmp && \
  wget -q $JQ_DOWNLOAD_URL && \
  chmod +x jq-linux64 && \
  mv jq-linux64 /usr/local/bin/jq
