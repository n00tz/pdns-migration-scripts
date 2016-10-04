#!/bin/sh
# USAGE ./testzones.sh LISTOFDOMAINS TARGETSERVER

awk '{print $1}' $1 | while read domain; do dig @$2 a $domain; done;
awk '{print $1}' $1 | while read domain; do dig @$2 txt $domain; done;
awk '{print $1}' $1 | while read domain; do dig @$2 soa $domain; done;
awk '{print $1}' $1 | while read domain; do dig @$2 ns $domain; done;
