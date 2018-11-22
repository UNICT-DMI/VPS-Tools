#!/bin/bash
TIME=`date +%b-%d-%y`                      # This Command will read the date.
FILENAME=backup-admfactory-$TIME.tar.gz    # The filename including the date.
SRCDIR=/home/dmidev                       # Source backup folder.
DESDIR=/home/backup-dmidev	          # Destination of backup file.
rm  "$DESDIR"/*.gz
tar cfv $DESDIR/$FILENAME $SRCDIR
