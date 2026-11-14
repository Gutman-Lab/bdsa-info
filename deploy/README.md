# info.bdsa.io deploy transport

The site is built in CI and deployed to `candyproxy` (Proxmox VM 137,
`170.140.138.248`). Two transports are supported; the repository variable
`INFO_DEPLOY_TRANSPORT` selects one.

## Default: pull (`INFO_DEPLOY_TRANSPORT` unset or `pull`)

GitHub-hosted runners cannot reach `170.140.138.248:22`; the gateway exposes
only 80/443. CI therefore publishes the document root as a rolling GitHub
release asset and the host pulls it:

1. `build` uploads `publish/` as the `info-bdsa-io` artifact.
2. `deploy` downloads it, creates `publish.tar.gz`, and uploads it to the
   `deploy-latest` release (prerelease; the asset is replaced on every run).
3. On candyproxy, `bdsa-info-sync.timer` runs every 2 minutes, verifies the
   asset digest, checks for `./index.html`, and pipes it to
   `/usr/local/bin/bdsa-info-deploy` (the existing receiver).

Logs: `journalctl -u bdsa-info-sync.service`. The receiver prints
`DEPLOYED <stamp>`.

Install or update the puller as root on candyproxy:

    git clone https://github.com/Gutman-Lab/bdsa-info /tmp/bdsa-info
    /tmp/bdsa-info/deploy/install-sync.sh

Disable it:

    systemctl disable --now bdsa-info-sync.timer

State is one line in `/var/lib/bdsa-info-sync/last-asset`; delete it to force a
redeploy of the current asset.

## Push over SSH (`INFO_DEPLOY_TRANSPORT=ssh`)

The original transport uses the `INFO_DEPLOY_SSH_KEY` repository secret and the
forced-command receiver:

    tar -C publish -czf - . | ssh -i info_deploy bdsa-info-deploy@170.140.138.248

It only works where port 22 is reachable (the lab network). Enable it by setting
the repository variable `INFO_DEPLOY_TRANSPORT` to `ssh`; the pull steps are
skipped while it is set. The host key fingerprint is
`SHA256:lc5SOuJRRWjE3HeGStzj9zcjsEPrpLWtB2uXDjlCy/A`.

## Rollback

Root on candyproxy: `/usr/local/bin/bdsa-info-rollback previous` (or a release
stamp). The receiver keeps the five newest releases.
