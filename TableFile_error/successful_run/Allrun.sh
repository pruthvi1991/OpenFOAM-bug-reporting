#!/bin/sh
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

cd cylinder_snappyHexMesh/
./clean.sh
./run.sh
cd ../cylinder_Re250/
./clean.sh
./run.sh

# ----------------------------------------------------------------- end-of-file
