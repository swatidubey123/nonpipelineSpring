FROM openjdk:11
EXPOSE 8085
ADD target/SpringbootJPA-0.0.1-SNAPSHOT.war SpringbootJPA-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/SpringbootJPA-0.0.1-SNAPSHOT.war"]