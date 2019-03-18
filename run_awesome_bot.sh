#!/usr/bin/bash
set -euxo pipefail

DEAD_URLS=''
SRC_FILE=README.md
awesome_bot \
  --allow-redirect \
  --allow-ssl \
  --allow-dupe \
  --skip-save-results \
  --white-list ${DEAD_URLS} \
  --files ${SRC_FILE}
