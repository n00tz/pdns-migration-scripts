#!/bin/sh
# USAGE ./getzonefromlist.sh LISTOFDOMAINS TARGETDIRECTORYFORZONEFILES
$server='axfr.server.zone.tld'

#
#
#

mkdir $2
awk '{print $1}' $1 | while read domain; do dig @$server -t axfr +multiline +noadditional +onesoa +noquestion +nostats +nocmd $domain >> $2/$domain.zone; done;
