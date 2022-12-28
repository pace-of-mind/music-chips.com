GCS_BUCKET=music-chips.com
JEKYLL_ENV?=development
build:
	jekyll build
build-prod:
	JEKYLL_ENV=production jekyll build
deploy: build-prod
	gsutil -m rsync -d -r ./_site gs://$(GCS_BUCKET)
	gsutil setmeta -h "Cache-Control: no-store, max-age=60" gs://$(GCS_BUCKET)/*.html
deploy-quick: build-prod
	gsutil -m rsync -c -d -r ./_site gs://$(GCS_BUCKET)
run:
	jekyll serve
