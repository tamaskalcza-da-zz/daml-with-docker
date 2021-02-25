ARG JDK_VERSION=8

FROM openjdk:${JDK_VERSION}

ARG DAML_SDK_VERSION
RUN curl --location \
  --output "daml-on-sql.jar" \
  "https://github.com/digital-asset/daml/releases/download/v$DAML_SDK_VERSION/daml-on-sql-$DAML_SDK_VERSION.jar"

ENTRYPOINT ["java", "-jar", "daml-on-sql.jar"]
