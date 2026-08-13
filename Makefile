SHELL:=/bin/zsh
BLOG:=blog

echo:
	echo $(BLOG);
server:
	rm -rf docs;
	hugo server;
push:
	rm -rf docs;
	hugo;
	git add .;
	git commit -m "$$(date +"%y-%m-%dT%H:%M:%S")";
	git push origin main;


