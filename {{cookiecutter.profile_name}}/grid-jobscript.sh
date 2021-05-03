#!/bin/bash
# properties = {properties}

set -e

echo "hostname:"
hostname -f
echo $BELLE2_RELEASE_DIR

if [[ -z "$BELLE2_RELEASE" ]]; then
  echo "No basf2 release defined!"
else
  source /cvmfs/belle.cern.ch/tools/b2setup.sh $BELLE2_RELEASE
fi

{exec_job}
