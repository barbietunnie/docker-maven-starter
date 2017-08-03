FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/spring-projects/spring-petclinic.git