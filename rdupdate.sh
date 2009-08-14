#!/bin/sh

rivendell_sources=$1

export RD_SOURCE=$rivendell_sources 
export RD_LANGUAGES=`dirname $0` 

$rivendell_sources/helpers/rdtrans.sh read fr
