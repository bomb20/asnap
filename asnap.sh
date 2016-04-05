#!/bin/sh

#asnap provides incremental rotating snapsots of folders using rsync

##Config Section


#Get current Timestamp


#check for jearly rotation

#check for monthly rotation

#check for weekly rotation

#check for daily rotation

#check for hourly rotation

#determine if last snapshot is present

#perform hourly snapshot
if ($LastPresent == true do){
	cp -al $SnapshotDir/$LastSnapshot/ $SnapshotDir/$TimeStamp/;
	rsync -valuz --delete --include-from="./includes" --exclude-from="excludes" $BackupDir/ $SnapshotDir/$TimeStamp/;
}


