all: tests

TEST_HTML = $(wildcard test/*.html)
TEST_CSS = $(TEST_HTML:.html=.css)

tests: $(TEST_CSS)

%.css: %.scss $(wildcard src/*.scss)
	sass --sourcemap --line-numbers -I src/ $< $@

clean:
	rm -f $(TEST_CSS)
