FROM sonatype/nexus3

USER root

COPY ./nexus-data /nexus-data/

EXPOSE 8081

CMD ["/opt/sonatype/nexus/bin/nexus", "run"]
