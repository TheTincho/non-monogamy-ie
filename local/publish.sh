#!/bin/bash

set -e

LOCALDIR=`dirname "$0"`
LOCALDIR=`readlink -f "${LOCALDIR}"`
SRCDIR="${LOCALDIR}"/..
DSTDIR="${LOCALDIR}"/html
CFGFILE="${LOCALDIR}"/ikiwiki.setup

cd "${SRCDIR}"
ikiwiki -setup "${CFGFILE}" -refresh
cd "${DSTDIR}"
neocities upload .
