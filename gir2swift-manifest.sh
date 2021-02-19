#!/bin/bash

GIR_NAME="PangoCairo-1.0"
GIR_PKG="pangocairo"

function generate_arg-path_arg-g2s-exec_arg-gir-file_arg-gir-pre-files {
    local PACKAGE_PATH=$1
    local G2S_EXEC=$2
    local GIR_PRE_FILES=$3
    local GIR_FILE=$4

    local CALLER=$PWD

    cd $PACKAGE_PATH
    
    local NAME=$(package_name)
    local GIR_PRE_ARGS=`for FILE in ${GIR_PRE_FILES}; do echo -n "-p ${FILE} "; done`
    bash -c "${G2S_EXEC} ${GIR_PRE_ARGS} ${GIR_FILE} | sed -f ${GIR_NAME}.sed > Sources/${NAME}/${GIR_NAME}.swift"

    cd $CALLER
}

case $1 in
gir-name) echo $GIR_NAME;;
gir-pkg) echo $GIR_PKG;;
generate) echo $(generate_arg-path_arg-g2s-exec_arg-gir-file_arg-gir-pre-files "$2" "$3" "$4" "$5");;
esac
