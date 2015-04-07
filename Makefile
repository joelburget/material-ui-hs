.PHONY: build

build: mui.css mui.js sandbox/out.js

sandbox/out.js: Main.hs material-ui.cabal
	cabal install --ghcjs

node_modules:
	npm install

mui.css: mui.less icons.less material-ui-js/docs/src/less/main.less
	lessc mui.less mui.css

mui.js:
	webpack
