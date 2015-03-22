#!/bin/sh
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

#cp -r ../simpleCoarseAmbient/constant/polyMesh/* constant/polyMesh/
#transformPoints -translate '(1 1 2)'
runApplication extrudeMesh
runApplication createPatch -overwrite
transformPoints -translate '(0 0 -0.2)'
#transformPoints -scale '(2.19298245614 2.19298245614 2)' #(40.45383985 40.45383985 2)
#paraFoam
cd 0.org/include/data/
./run.sh
cd ../../../
cp -r 0.org 0
#runApplication mapFields ./ -consistent
##mv 0/pointDisplacement.unmapped 0/pointDisplacement
#runApplication decomposePar
#runParallel `getApplication` 6
#runApplication reconstructPar
original_inertial_pimpleFoam > log.original_inertial_pimpleFoam
#rm -r processor*
# ----------------------------------------------------------------- end-of-file
