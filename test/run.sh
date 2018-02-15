#!/bin/sh
CURR_DIR="$(dirname $0)";
printf "Testing NPM...\n";

NPM_ALL="$(${CURR_DIR}/../dephash.sh ${CURR_DIR}/npm/package.json --npm)";
printf -- "NPM_ALL: ${NPM_ALL}\n";

NPM_PROD="$(${CURR_DIR}/../dephash.sh ${CURR_DIR}/npm/package.json --npm --prod)";
printf -- "NPM_PROD: ${NPM_PROD}\n";

NPM_DEV="$(${CURR_DIR}/../dephash.sh ${CURR_DIR}/npm/package.json --npm --dev)";
printf -- "NPM_DEV: ${NPM_DEV}\n";

YARN_ALL="$(${CURR_DIR}/../dephash.sh ${CURR_DIR}/yarn/yarn.lock --yarn)";
printf -- "YARN_ALL: ${YARN_ALL}\n";

exit 0;