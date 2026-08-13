SHELL:=/bin/zsh
include .env
BLOG:=blog

echo:
	echo $(BLOG);
server:
	hugo server -t terminal
rm_submodule:
	git rm -rf $(BLOG) || true;
	git config -f .git/config --remove-section submodule.$(BLOG) 2>/dev/null || true;
	rm -rf .git/modules/$(BLOG)/ || true;
pull_submodule:
	git submodule add -f https://github.com/ciaolee87/ciaolee87.github.io/ $(BLOG) ;
update_submodule:
	git submodule update --remote;
publish:
	{\
  		rm -rf public; \
  		hugo \
		cp public blog \

	}



