FROM jboss/wildfly:10.1.0.Final

ADD  http://nexus-nexus.192.168.99.100.nip.io/repository/cursoOpenshift/artefactos/Aplicacion.war /opt/jboss/wildfly/standalone/deployments/

USER root
RUN chmod 777 -R /opt/jboss/wildfly/standalone/deployments/Aplicacion.war
USER jboss

