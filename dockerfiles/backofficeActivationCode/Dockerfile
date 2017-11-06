FROM nimmis/alpine-java
COPY target/backofficeActivationCode.jar /usr/src/app/backofficeActivationCode.jar
WORKDIR /usr/src/app
CMD java -Xmx64m -Dcxf.config.file=/usr/src/app/backoffice/cxf.xml -Dspring.config.location=/usr/src/app/backoffice/application.properties -Dlogging.config=/usr/src/app/backoffice/logback.xml -Dloader.path=/usr/src/app/lib/postgresql-9.4-1201-jdbc41.jar -jar backofficeActivationCode.jar
