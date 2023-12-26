build:
	mvn -B clean install

ut:
	mvn clean test -Punit-tests

it:
	mvn clean verify -Pintegration-tests

list-releases:
	curl 'https://central.sonatype.com/api/internal/browse/component/versions?sortField=normalizedVersion&sortDirection=asc&page=0&size=12&filter=namespace%3Aio.github.amithkoujalgi%2Cname%3Aollama4j' \
      --compressed \
      --silent | jq '.components[].version'