build:
	gem build noon.gemspec
	tree .
export: build
	gem push noon.gemspec
#preview: build
	#cd ./test && git submodule add $(REPO)
	#cd ./test/$(NAME)
	#cp ./noon*.gem ./test/$(NAME)
	#cd ./test/$(NAME) && gem install noon*.gem
	#cd ./test/$(NAME) && bundle install && bundle exec jekyll serve

