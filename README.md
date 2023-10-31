# renovate-node-lts-docker

It appears that adding the following package rule to `renovate.json` makes Dockerfile node image follow LTS versions of node even if there is no explicit mention of it.
Without this, the node version is updated to latest version instead of LTS.

```json
  "packageRules": [
    {
      "matchDatasources": ["docker"],
      "matchPackageNames": ["node"],
      "versioning": "node"
    }
  ]
```
