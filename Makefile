BIN = ./node_modules/.bin
SRC = $(wildcard src/*.coffee)
LIB = $(SRC:src/%.coffee=lib/%.js)

build: $(LIB)

lib/%.js: src/%.coffee
	mkdir -p $(@D)
	$(BIN)/coffee --compile --print --map $< > $@

test: build
	$(BIN)/mocha

clean:
	rm -f $(LIB)

install link:
	npm $@

release-patch: build test
	npm version patch

release-minor: build test
	npm version minor

release-major: build test
	npm version major

publish:
	git push --tags origin HEAD:master
	npm publish
