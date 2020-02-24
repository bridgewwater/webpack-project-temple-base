.PHONY: test check clean build dist all

TOP_DIR := $(shell pwd)

# ifeq ($(FILE), $(wildcard $(FILE)))
# 	@ echo target file not found
# endif

DIST_VERSION := v1.0.0

dev:
	npm run build -- --config webpack.config.js

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

listDepends:
	npm list

prune:
	npm prune

buildX:
	npx webpack --config webpack.config.js

travisTest:
	npm test

helpRoot:
	@echo "make init        -> init project and check this project evn"
	@echo "make listDepends -> list dependencise of this project"
	@echo "make prune       -> prune project"
	@echo "make buildX      -> use npx to build this project"
	@echo "make dev         -> run dev use as npm run by args"
	@echo ""

help: helpRoot
	@echo "more info see makefile"