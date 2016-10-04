#!/bin/sh
#./makenamed DOMAINLISTING DIRECTORYCONTAININGZONES

echo 'options {\n\tdirectory "'$2'";\n};\n' >> named.conf
awk '{print $1}' $1 | while read domain; do echo 'zone "'$domain'" IN {\n\tfile "'$domain'.zone";\n };\n' >> named.conf; done;
