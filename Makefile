SHELL:=/bin/zsh
-include .env
export

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


upload:
	echo $(AWS_ACCESS_KEY_ID);
	echo $(AWS_SECRET_ACCESS_KEY);
	echo $(AWS_DEFAULT_REGIO);
	echo $(AWS_S3_BUCKET);
	docker buildx build \
	--platform linux/amd64 \
	--no-cache \
	--secret id=AWS_ACCESS_KEY_ID,env=AWS_ACCESS_KEY_ID \
	--secret id=AWS_SECRET_ACCESS_KEY,env=AWS_SECRET_ACCESS_KEY \
	--secret id=AWS_DEFAULT_REGION,env=AWS_DEFAULT_REGION \
	--secret id=AWS_S3_BUCKET,env=AWS_S3_BUCKET \
	-f script/upload.dockerfile .;