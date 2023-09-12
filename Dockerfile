FROM openjdk:8-jdk-alpine
EXPOSE 9000
ENV RESTAURANT_LIST_SERVICE_URL http://localhost:9001/restaurants/
COPY target /app/target
RUN ls /app/target
ENTRYPOINT ["java","-jar","./app/target/RestaurantWeb-0.0.1-SNAPSHOT.jar"]