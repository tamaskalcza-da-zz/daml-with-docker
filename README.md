# Daml with Docker

- [Overview](#overview)
- [Usage with Public Releases](#usage-with-public-releases)
- [Usage with JFrog](#usage-with-jfrog)

## Overview

This repository contains an example on how to use two Daml components with Docker. These components are the [Daml-on-SQL](https://github.com/digital-asset/daml/tree/main/ledger/daml-on-sql) implementation and the [JSON API](https://docs.daml.com/json-api/index.html).

## Usage with Public Releases

Use the following command:
```shell
docker-compose up
```

This approach uses the publicly available JAR files from the [Daml releases](https://github.com/digital-asset/daml/releases).

## Usage with JFrog

With an appropriate JFrog account one can use:
```shell
docker-compose --file docker-compose-jfrog.yml up
```

*Note:* make sure Docker is set up to use the JFrog account.
