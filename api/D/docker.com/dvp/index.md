---
slug: "docker-com-dvp"
title: "DVP Data API"
provider: "docker.com"
description: "The Docker DVP Data API allows [Docker Verified Publishers](https://docs.docker.com/docker-hub/publish/)\
  \ to view image pull analytics data for their namespaces. Analytics data can be\
  \ retrieved as raw data, or in a summary format.\n  \n#### Summary data\n\nIn your\
  \ summary data CSV, you will have access to the data points listed below. You can\
  \ request summary data for a complete week (Monday through Sunday) or for a complete\
  \ month (available on the first day of the following month). \n\nThere are two levels\
  \ of summary data:\n\n- Repository-level, a summary of every namespace and repository\n\
  - Tag- or digest-level, a summary of every namespace, repository, and reference\n\
  \  (tag or digest)\n\n The summary data formats contain the following data points:\n\
  \n- Unique IP address count\n- Pulls by tag count\n- Pulls by digest count\n- Version\
  \ check count\n\n#### Raw data\n\nIn your raw data CSV you will have access to the\
  \ data points listed below. You can request raw data for a complete week (Monday\
  \ through Sunday) or for a complete month (available on the first day of the following\
  \ month). **Note:** each action is represented as a single row.\n\n- Type (industry)\n\
  - Host (cloud provider)\n- Country (geolocation)\n- Timestamp\n- Namespace\n- Repository\n\
  - Reference (digest is always included, tag is provided when available)\n- HTTP\
  \ request method\n- Action, one of the following:\n  - Pull by tag\n  - Pull by\
  \ digest\n  - Version check\n- User-Agent\n"
logo: "docker.com-dvp-logo.png"
logoMediaType: "image/png"
tags:
- "developer_tools"
stubs: "docker.com-dvp-stubs.json"
swagger: "docker.com-dvp-swagger.json"
---
