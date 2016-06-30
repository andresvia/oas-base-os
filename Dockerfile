FROM centos:7.2.1511
RUN yum install -y wget unzip && yum clean all
ENV AWS_DOWNLOAD_URL https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
RUN cd /tmp && \
  wget -q $AWS_DOWNLOAD_URL && \
  unzip awscli-bundle.zip && \
  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \
  rm -r awscli-bundle/ awscli-bundle.zip
