SHELL:=/bin/zsh
BLOG:=blog

echo:
	echo $(BLOG);
server:
	hugo server;
publish:
	rm -rf docs;
	hugo;
	git add .;
	git commit -m "$$(date +"%y-%m-%dT%H:%M:%S")";
	git push origin main;


