FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/spring-projects/spring-petclinic.git

FROM maven:3.5-jdk-8-alpine as build
WORKDIR /app
COPY --from=clone /app/spring-petclinic /app
RUN mvn install
