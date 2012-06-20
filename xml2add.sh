#!/bin/bash

echo "<add>" > adddocs.xml
xml tr --omit-decl xml2add.xslt brewery/*.xml >> adddocs.xml
xml tr --omit-decl xml2add.xslt beer/*/*.xml >> adddocs.xml
echo "</add>" >> adddocs.xml

curl -H "Content-Type: text/xml" --data-binary @adddocs.xml http://localhost:8983/solr/update
curl -H "Content-Type: text/xml" --data-binary '<commit waitFlush="false" waitSearcher="false"/>' http://localhost:8983/solr/update


