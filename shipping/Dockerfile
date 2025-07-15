FROM maven
WORKDIR /opt/server
COPY pom.xml /opt/server
COPY src /opt/server/src
RUN mvn clean package
RUN ls -ltr target
RUN mv /opt/server/target/shipping-1.0.jar /opt/server/shipping.jar
CMD ["java", "-jar", "shipping.jar"]