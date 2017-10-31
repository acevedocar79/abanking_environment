FROM java:8
COPY target/Abanking-Core.jar /usr/src/app/Abanking-Core.jar
CMD "mkdir -p /usr/src/app/core/"
WORKDIR /usr/src/app
CMD java -Xmx64m -Dspring.config.location=/usr/src/app/core/core.properties -jar Abanking-Core.jar