### NAMED Builder
These scripts were used to migrate from a TinyDNS server to PowerDNS by building a NAMED.conf file to be ingested by powerdns's tooling. However, this was accomplished in a way that could be used to transfer from any server that allows AXFR.

## Step 1
Build a list of domains to transfer, one domain per line in the format 'domain.tld'

## Step 2
Modify getzonefromlist.sh to provide the source server to run the AXFR query against.

## Step 3
Run makenamed.sh to create a named.conf
