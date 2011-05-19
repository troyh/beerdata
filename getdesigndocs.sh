#!/bin/bash

if [ ! -d _design ]; then mkdir _design; fi

curl --silent  'http://localhost:5984/beercrush/_all_docs?startkey="_design/"&endkey="_design0"' | 
php -r '$j=json_decode(file_get_contents("php://stdin"));foreach ($j->rows as $r) print $r->id."\n";' | 
while read doc; do \
	curl --silent http://localhost:5984/beercrush/$doc | jsontidy > $doc.json; \
done

