#
# Multi-stage build para aplicação Java
#
FROM maven:ibmjava AS build

COPY src /opt/app/src
COPY pom.xml /opt/app
WORKDIR /opt/app
RUN mvn clean package

FROM ibmjava:sfj

COPY --from=build /opt/app/target/my-app.jar /opt/app/my-app.jar
WORKDIR /opt/app

CMD ["java","-jar","/opt/app/my-app.jar"]
