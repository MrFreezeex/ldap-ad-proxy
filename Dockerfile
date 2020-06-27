FROM alpine:3.11

RUN apk add --no-cache  openldap-back-meta \
                        openldap-overlay-rwm \
                        openldap-back-ldap \
                        openldap-clients \
                        openldap \
                        gettext

RUN mkdir /var/run/openldap \
        && chown -R ldap:ldap /var/run/openldap

ADD schema /opt/docker/schema
ADD run.sh /
ADD slapd.conf /tmp/

WORKDIR /etc/openldap
CMD /run.sh
