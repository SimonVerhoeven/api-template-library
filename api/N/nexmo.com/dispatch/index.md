---
slug: "nexmo-com-dispatch"
title: "Dispatch API"
provider: "nexmo.com"
description: "The Dispatch API enables the developer to specify a multiple message\
  \ workflow. A workflow follows a template. The first one we are adding is the failover\
  \ template. The failover template instructs the Messages API to first send a message\
  \ to the specified channel. If that message fails immediately or if the condition_status\
  \ is not reached within the given time period the next message is sent. The developer\
  \ will also receive status webhooks from the messages resource for each delivery\
  \ and read event. This API is currently in Beta."
logo: "nexmo.com-dispatch-logo.svg"
logoMediaType: "image/svg+xml"
tags: []
stubs: "nexmo.com-dispatch-stubs.json"
swagger: "nexmo.com-dispatch-swagger.json"
---
