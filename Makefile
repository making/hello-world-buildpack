.EXPORT_ALL_VARIABLES:

.PHONY: clean \
        package \
        release

SHELL=/bin/bash -o pipefail

VERSION := "v$$(cat buildpack.toml | grep '^version' | sed -e 's/version = //g' | xargs)"

clean:
	rm -f hello-world-buildpack-$(VERSION).tgz

package: clean
	tar cvzf hello-world-buildpack-$(VERSION).tgz bin/ buildpack.toml README.md

release:
	git tag $(VERSION)
	git push --tags origin master

