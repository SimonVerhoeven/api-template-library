---
slug: "spinitron-com"
title: "Spinitron v2 API"
provider: "spinitron.com"
description: "## Notes\n\n**Tutorial demo** using this API is at [https://spinitron.com/v2-api-demo/](https://spinitron.com/v2-api-demo/).\
  \ For web integration using iframes and/or JavaScript instead of an API, see [https://spinitron.github.io/v2-web-integration/](https://spinitron.github.io/v2-web-integration/).\n\
  \n**Your API key** is found in the Spinitron web app. Log in to Spinitron and go\
  \ to *Automation & API* in the *Admin* menu.\n\n**Authenticate** by presenting your\
  \ API key using either HTTP Bearer Authorization\n(preferred)\n\n    curl -H 'Authorization:\
  \ Bearer YOURAPIKEY' 'https://spinitron.com/api/spins'\n\nor in the query parameter\
  \ `access-token` (less secure owing to webserver\nlog files)\n\n    curl 'https://spinitron.com/api/spins?access-token=YOURAPIKEY'\n\
  \n**Limit** per page of results is 20 by default and miximally 200.\n\n**Try it\
  \ out** below works to\ngenerate example cURL requests but not to get responses\
  \ from Spinitron. We\ndo not accept queries sent from web browsers. Copy-paste the\
  \ cURL commands\nand run them from your computer.\n\n**Cache** the data you get\
  \ from the API if you are using it in web or mobile integration. It's not ok to\
  \ query the API on *every* page request you serve. The [demo](https://spinitron.com/v2-api-demo/)\
  \ shows how easy it can be to implement a file cache.\n\nAn extension to this API\
  \ with access to all stations for partner applications is available. Contact us.\n"
logo: "spinitron.com-logo.png"
logoMediaType: "image/png"
tags:
- "media"
stubs: "spinitron.com-stubs.json"
swagger: "spinitron.com-swagger.json"
---
