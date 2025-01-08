FROM openjdk:21-jdk-slim

WORKDIR /SpringBootRender

COPY . /SpringBootRender

RUN chmod +x gradlew

RUN ./gradlew clean build -x check -x test

CMD ["java", "-jar", "build/libs/demo-1.jar"]

