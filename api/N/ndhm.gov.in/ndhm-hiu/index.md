---
slug: "ndhm-gov-in-ndhm-hiu"
title: "Health Repository Provider Specifications for HIU"
provider: "ndhm.gov.in"
description: "The following are the specifications for the APIs to be implemented\
  \ at the Health Repository end if an entity is only serving the role of a HIU. The\
  \ specs are essentially duplicates from the Gateway and Bridge, but put together\
  \ so as to make it clear to *HIUs* which set of APIs they should implement to participate\
  \ in the network. \n\n  1. The APIs are organized by the flows - **identification**,\
  \ **consent flow**, **data flow** and **monitoring**. They represent the APIs that\
  \ are expected to be available at the HIU end by the Gateway. \n  2. For majority\
  \ of the APIs, if Gateway has initiated a call, there are corresponding callback\
  \ APIs on the Gateway. e.g for **/consents/hiu/notify** API on HIU end, its expected\
  \ that a corresponding callback API **/consents/hiu/on-notify** on Gateway is called.\
  \ Such APIs are organized under the **Gateway** label. \n  3. Gateway relevant APIs\
  \ for HIUs are grouped under **Gateway** label. These include the APIs that HIPs\
  \ are required to call on the Gateway. For example, to request a CM for consent,\
  \ HIU would call **/consent-requests/init** API on gateway. \n  4. **NOTE**, in\
  \ some of the API documentations below, **X-HIP-ID** is mentioned in header (for\
  \ example in /auth/on-init). These are the cases, when a particular API is applicable\
  \ for both HIU and HIP (e.g an entity is playing the role of HRP representing both\
  \ HIU and HIP). If you are only playing the role of HIP, then only X-HIU-ID header\
  \ will be sent \n"
logo: "ndhm.gov.in-ndhm-hiu-logo.svg"
logoMediaType: "image/svg+xml"
tags:
- "open_data"
stubs: "ndhm.gov.in-ndhm-hiu-stubs.json"
swagger: "ndhm.gov.in-ndhm-hiu-swagger.json"
---
