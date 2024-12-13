FROM alpine:edge AS build

WORKDIR /workspace

RUN apk update

RUN apk add npm

RUN npm i -g stylus

WORKDIR /code

COPY bin/stylus/style.styl .

RUN stylus style.styl

FROM maven:3-openjdk-17

WORKDIR /code

COPY bin .

COPY --from=build /code/style.css src/main/resources/static/css

ENTRYPOINT ["mvn"]

CMD ["clean", "install", "compile", "spring-boot:run"]
