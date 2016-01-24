# love Makefile

all:

commit:
	git add `submodule --quiet foreach 'echo "$$name"'`
	git commit -m "automatic `date +%Y%m%d-%H%M%S`"

push:
	git submodule foreach git push && git push

