.PHONY: build npm

build: mui.css mui.js

npm:
	npm install

mui.css: npm mui.less
	lessc mui.less mui.css

mui.js: npm
	haste-commonjs
