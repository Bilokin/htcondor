#!/bin/bash
# properties = {properties}

set -e

echo "hostname:"
hostname -f
echo $BELLE2_RELEASE_DIR

if [ -z "$BELLE2_RELEASE" ]; then
  source /cvmfs/belle.cern.ch/tools/b2setup.sh $BELLE2_RELEASE
fi


{exec_job}
