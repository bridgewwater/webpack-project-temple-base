.PHONY: test check clean build dist all

TOP_DIR := $(shell pwd)

# ifeq ($(FILE), $(wildcard $(FILE)))
# 	@ echo target file not found
# endif

DIST_VERSION := v1.0.0

init:
	@echo "check out runtime"
	node -v
	npm -v
	npm i
	npm fund

depends:
	npm list

prune:
	npm prune

buildX:
	npx webpack --config webpack.config.js

dev:
	npm run build -- --config webpack.config.js