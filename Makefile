build-agent:
	mkdir node agent
	cd ./node && git submodule add --force 'https://github.com/ggml-org/llama.cpp'
	cd ./agent && git submodule add --force 'https://github.com/anomalyco/opencode'
	cd ./agent/opencode && chmod +x ./install && ./install
build:
	gem build noon.gemspec
	tree .
export: build
	gem push noon.gemspec
build-preview: build
	mkdir test
	cd ./test && git submodule add --force $(REPO)
preview: build
	cp ./noon*.gem ./test/$(NAME)
	cd ./test/$(NAME) && bundle install && gem install noon*.gem && bundle exec jekyll serve
clean:
	cd ./test/$(NAME) && gem uninstall rdoc
