# renovate-node-lts-docker

It appears that adding the following package rule to `renovate.json` makes Dockerfile node image follow LTS versions of node even if there is no explicit mention of it.
Without this, the node version is updated to latest version instead of LTS.

Additionally, renovate does not support docker image suffixes yet. See [this](https://github.com/renovatebot/renovate/issues/13270).
To support image names like `node:18.0-alpine`, we use `versionCompatibility` to define how the version with suffix should be parsed.
The `versionCompatibility` is not necessarily needed if the image version does not use any suffix.

```json
  "packageRules": [
    {
      "matchDatasources": ["docker"],
      "matchPackageNames": ["node"],
      "versionCompatibility": "^(?<version>[^-]+)(?<compatibility>-.*)?$",
      "versioning": "node"
    }
  ]
```
