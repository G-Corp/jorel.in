all: 
	@mkdocs serve

build: clean generate 

clean:
	@rm -rf site

generate: 
	@mkdocs build

