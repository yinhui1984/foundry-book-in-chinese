
build:
	mdbook build
init:
	cargo install mdbook && cargo install mdbook-i18n
clean:
	rm -rf book
run_static:
	if [ ! -d "book" ]; then \
		mdbook build; \
	fi
	open ./book/i18n/zh/index.html
