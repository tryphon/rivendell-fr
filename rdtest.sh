#!/bin/sh

rivendell_sources=$1

export RD_SOURCE=$rivendell_sources 
export RD_LANGUAGES=`dirname $0` 

$rivendell_sources/helpers/rdtrans.sh write fr

cd $rivendell_sources

cd rdairplay
lupdate rdairplay.pro
lrelease rdairplay.pro
sudo cp rdairplay_fr.qm /usr/share/rivendell/

cd ../lib
lupdate lib.pro
lrelease lib.pro
sudo cp librd_fr.qm /usr/share/rivendell/

