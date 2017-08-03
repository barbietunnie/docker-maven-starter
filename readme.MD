# Dockerfile for creating maven-based Git projects
A dockerfile for building small-size maven projects using a git repository.

## Build Examples
1. Build Spring Pet Clinic image

        docker build --build-arg url=https://github.com/spring-projects/spring-petclinic.git\
        --build-arg project=spring-petclinic\
		--build-arg artifactid=spring-petclinic\
		--build-arg version=1.5.1\
		-t barbietunnie/spring-petclinic - < Dockerfile

2. Build Heroku Getting-Started image

        docker build --build-arg url=https://github.com/heroku/java-getting-started.git\
		--build-arg project=java-getting-started\
		--build-arg artifactid=java-getting-started\
		--build-arg version=1.0\
		-t barbietunnie/java-getting-started - < Dockerfile
    
	
N.B: Since the image doesn’t depend on the filesystem, no context needs to be passed, and the Dockerfile can be piped from the standard input.

## Running
    docker run -it -p 8080:8080 barbietunnie/spring-petclinic

## Special Thanks

-  [Nicolas Frankel](https://dzone.com/articles/a-dockerfile-for-maven-based-github-projects)