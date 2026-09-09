build:
	gem build noon.gemspec
	tree .
publish: build
	gem push noon.gemspec
build-preview: build
	mkdir test
	cd ./test && git submodule add --force $(REPO)
parent-preview: build
	cp ./noon*.gem ../$(NAME)
	cd ../$(NAME) && bundle install && gem install noon*.gem && bundle exec jekyll serve
local-preview: build
	cp ./noon*.gem ./test/$(NAME)
	cd ./test/$(NAME) && bundle install && gem install noon*.gem && bundle exec jekyll serve
clean:
	cd ./test/$(NAME) && gem uninstall rdoc