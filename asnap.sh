#!/bin/bash

sourcefolder="/home/vincent"
snapfolder="/home/vincent/vault/asnap"
includefile="/home/vincent/.asnap_include"
excludefile="/home/vincent/.asnap_exclude"
#read datestamp of last snapshot
lastsnap=`tail -n 1 ${snapfolder}/asnap.journal`

#write actual timestamp
tstamp=`date +%Y%V%m%d%H%M%S`
echo "$tstamp" >> ${snapfolder}/.asnap.journal
#copy last Snapshot into new one
cp -al ${snapfolder}/${lastsnap} ${snapfolder}/${tstamp}

#perform actual Snapshot

rsync -vau --delete --include-from=$includefile --exclude-from=$excludefile ${sourcefolder}/ $snapfolder

#perform delete operations

