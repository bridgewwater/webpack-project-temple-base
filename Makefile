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
	@echo "=> this proejct need http://karma-runner.github.io/"
	@echo "if error please install: npm install -g karma"
	@echo ""
	karma --version
	npm fund

depends:
	npm list

prune:
	npm prune

buildX:
	npx webpack --config webpack.config.js

dev:
	npm run build -- --config webpack.config.js