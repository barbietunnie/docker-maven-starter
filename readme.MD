# Dockerfile for maven-based Github projects
A dockerfile for building small-size maven projects using a github repository.

## Building

1. Build Spring Pet Clinic image
    docker build --build-arg url=https://github.com/spring-projects/spring-petclinic.git\
	--build-arg project=spring-petclinic\
	--build-arg artifactid=spring-petclinic\
	--build-arg version=1.5.1\
	-t nfrankel/spring-petclinic - < Dockerfile
  
2. Build Heroku Getting-Started image
    docker build --build-arg url=https://github.com/heroku/java-getting-started.git\
	--build-arg project=java-getting-started\
	--build-arg artifactid=java-getting-started\
	--build-arg version=1.0\
	-t nfrankel/java-getting-started - < Dockerfile
    
	
N.B: Since the image doesn’t depend on the filesystem, no context needs to be passed, and the Dockerfile can be piped from the standard input.

## Running
    docker run -ti -p8080:8080 nfrankel/spring-petclinic