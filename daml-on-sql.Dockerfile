ARG JDK_VERSION=8

FROM openjdk:${JDK_VERSION}

ARG DAML_SDK_VERSION
RUN curl --location \
  --remote-header-name \
  --remote-name \
  --output "daml-on-sql-$DAML_SDK_VERSION.jar" \
  "https://github.com/digital-asset/daml/releases/download/v$DAML_SDK_VERSION/daml-on-sql-$DAML_SDK_VERSION.jar"
