S3_CP_ARGS=aws s3 cp --acl public-read
RELEASE_VERSION?=
BUCKET_NAME=observe-chutchinson

S3_BUCKET_PATH=s3://$(BUCKET_NAME)/cloudformation/

.PHONY: copy_s3
copy_s3:
	for file in templates/*.yaml ; do \
		$(S3_CP_ARGS) $$file $(S3_BUCKET_PATH)$$(basename $$file .yaml)-$(RELEASE_VERSION).yaml ; \
		$(S3_CP_ARGS) $$file $(S3_BUCKET_PATH)$$(basename $$file .yaml)-latest.yaml ; \
	done

.PHONY: release
release: check_release_version check_existing_version copy_s3

check_release_version:
ifndef RELEASE_VERSION
	$(error RELEASE_VERSION is not set or empty for release)
endif

check_existing_version:
	@for file in templates/*.yaml ; do \
		status=$$(aws s3api head-object --bucket $(BUCKET_NAME) --key cloudformation/$$(basename $$file .yaml)-$(RELEASE_VERSION).yaml >/dev/null 2>&1 ; echo $$?); \
		if [ "$$status" = "0" ]; then \
			echo "Command used: aws s3api head-object --bucket $(BUCKET_NAME) --key cloudformation/$$(basename $$file .yaml)-$(RELEASE_VERSION).yaml"; \
			echo "A release with version $(RELEASE_VERSION) of file $$file already exists in S3"; \
			exit 1; \
		elif [ "$$status" != "255" ] && [ "$$status" != "0" ]; then \
			echo "Command used: aws s3api head-object --bucket $(BUCKET_NAME) --key cloudformation/$$(basename $$file .yaml)-$(RELEASE_VERSION).yaml"; \
			echo "API or credential error while checking existence in S3 for file $$file"; \
			exit 1; \
		fi \
	done
