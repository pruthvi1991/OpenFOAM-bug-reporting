#!/bin/bash
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

runApplication extrudeMesh
runApplication createPatch -overwrite
cp -r 0.org 0
runApplication decomposePar
runParallel `getApplication` 8
runApplication reconstructPar
rm -r processor*
