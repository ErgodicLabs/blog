.PHONY: build clean rebuild

build:
	hugo --baseURL "https://ergodiclabs.github.io/blog/" --cleanDestinationDir

clean:
	rm -r docs/

rebuild: clean build

