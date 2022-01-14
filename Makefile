NAME=server

.PHONY: create test run clean cleanall

all: bin/$(NAME).exe

create:
	dart create -t server-shelf . --force

bin/$(NAME).exe:
	dart compile exe bin/$(NAME).dart

test:
	dart test
    
run: bin/$(NAME).exe
	bin/$(NAME).exe
    
clean:
	rm -rf bin/$(NAME).exe
    
cleanall:
	rm -rf bin lib test .dart_tool
	rm -f .packages analysis_options.yaml pubspec.lock pubspec.yaml
	rm -f .gitignore CHANGELOG.md
	rm -f .dockerignore Dockerfile