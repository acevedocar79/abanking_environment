FROM java:8
COPY target/endpointScotiaWS.jar /usr/src/app/endpointScotiaWS.jar
WORKDIR /usr/src/app
CMD java -Xmx64m -Dcxf.config.file=/usr/src/app/userComponent/cxf.xml -Dspring.config.location=/usr/src/app/userComponent/application.properties -Dlogging.config=/usr/src/app/userComponent/logback.xml -Dloader.path=/usr/src/app/lib/postgresql-9.4-1201-jdbc41.jar -jar endpointScotiaWS.jar