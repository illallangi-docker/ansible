FROM centos:7
MAINTAINER Andrew Cole <andrew.cole@illallangi.com>

RUN yum -y install epel-release && \
    yum -y install ansible && \
    yum -y update && \
    yum -y clean all

ENTRYPOINT ["/usr/local/bin/ansible-entrypoint.sh"]
CMD ["/bin/bash"]

RUN mkdir -p /etc/ansible.d

COPY bin/* /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh
