GCS_BUCKET=music-chips.com
build:
	jekyll build
deploy: build
	gsutil -m rsync -d -r ./_site gs://$(GCS_BUCKET)
	gsutil setmeta -h "Cache-Control: no-store, max-age=60" gs://$(GCS_BUCKET)/*.html
deploy-quick: build
	gsutil -m rsync -c -d -r ./_site gs://$(GCS_BUCKET)
run:
	jekyll serve
