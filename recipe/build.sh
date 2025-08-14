#!/bin/bash

set -xe

# install using pip from the whl files on PyPI
WHL_FILE=trust3_client-${PKG_VERSION}-py3-none-any.whl 
curl -Lso "$WHL_FILE" https://pypi.org/packages/py3/t/trust3_client/trust3_client-${PKG_VERSION}-py3-none-any.whl

$PYTHON -m pip install --no-deps --no-build-isolation -vvv $WHL_FILE