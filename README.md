# Github Download Release Asset Action

Heavily based on [Download Release Action](https://github.com/Legion2/download-release-action) with changes to allow for downloading assets by partial name.

Downloads an asset, by matching name to the specified path.



```yaml
- name: Download Latest Updater
  uses: camalot/github-download-release-asset-action@develop
  with:
    # Required; Repository owner
    owner: camalot
    # Required; Repository name
    repository: chatbotscriptupdater
    # Optional; Release tag
    tag: latest
    # Required; Asset Name. Can be partial name to match
    assetName: ApplicationUpdater.Administrator
    # Required; The file name to save asset as
    file: applicationupdater.zip
    # Optional; the path to save the asset
    path: ./
    # Optional; The github token
    token: "${{ github.token }}"
```