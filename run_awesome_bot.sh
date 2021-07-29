#!/usr/bin/env bash
set -euxo pipefail

# objective-see.com gets 403 on CI. Probably due to some IP blacklist.
DEAD_URLS='objective-see.com','appcritique.boozallen.com'
SRC_FILE=README.md
awesome_bot \
  --allow-redirect \
  --allow-ssl \
  --allow-dupe \
  --skip-save-results \
  --white-list ${DEAD_URLS} \
  --files ${SRC_FILE}
