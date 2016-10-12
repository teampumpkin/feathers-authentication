SRC = $(wildcard src/*.js) $(wildcard src/**/*.js)
LIB = $(SRC:src/%.js=lib/%.js)

build: $(LIB)

lib/%.js: src/%.js
	mkdir -p $(@D)
	babel $< -o $@
