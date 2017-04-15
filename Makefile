.PHONY: build
build:
	docker build -t openjdk32 .

.PHONY: exec
exec: build
	docker run -it --rm openjdk32 /bin/sh

.PHONY: run
run: build
	docker run -it --rm openjdk32 java -XX:+PrintFlagsFinal -version
