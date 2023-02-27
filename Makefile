.PHONY : build init clean run_static run

all: run

build:
	mdbook build
	cd ./fileserver && go mod tidy && go build
init:
	cargo install mdbook && cargo install mdbook-i18n
clean:
	rm -rf book
	rm -rf ./fileserver/fileserver
run_static:
	if [ ! -d "book" ]; then \
		mdbook build; \
	fi
	open ./book/i18n/zh/index.html
run:
	if [ ! -d "book" ]; then \
		mdbook build; \
	fi
	if [ ! -f "./fileserver/fileserver" ]; then \
		cd ./fileserver && go build; \
	fi
	-@killall -9 fileserver
	cd ./fileserver && ./fileserver > /dev/null & 
