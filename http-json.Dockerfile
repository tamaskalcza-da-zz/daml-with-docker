ARG JDK_VERSION=8

FROM openjdk:${JDK_VERSION}

ARG DAML_SDK_VERSION
RUN curl --location \
  --output "http-json.jar" \
  "https://github.com/digital-asset/daml/releases/download/v$DAML_SDK_VERSION/http-json-$DAML_SDK_VERSION.jar"

ENTRYPOINT ["java", "-jar", "http-json.jar"]
