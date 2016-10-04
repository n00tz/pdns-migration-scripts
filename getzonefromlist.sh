#!/bin/sh
# USAGE ./getzonefromlist.sh LISTOFDOMAINS TARGETDIRECTORYFORZONEFILES

mkdir $2
awk '{print $1}' $1 | while read domain; do dig @ns1.cha.smartechcorp.net -t axfr +multiline +noadditional +onesoa +noquestion +nostats +nocmd $domain >> $2/$domain.zone; done;
