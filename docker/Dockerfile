FROM gradle:jdk17-alpine
WORKDIR /cli-service

COPY src /cli-service/src/
COPY build.gradle .

RUN gradle clean build -x test

ENTRYPOINT ["java","-jar","./build/libs/cli-service-1.0.0.jar"]