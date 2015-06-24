.PHONY: build

build: mui.css mui.js sandbox/out.js

sandbox/out.js: Main.hs material-ui.cabal .cabal-sandbox
	cabal install --ghcjs

node_modules:
	npm install

mui.css: mui.less icons.less material-ui-js/docs/src/less/main.less node_modules
	lessc mui.less mui.css

mui.js: node_modules
	./node_modules/.bin/webpack

.cabal-sandbox:
	if [ ! -d .cabal-sandbox ]; then \
		cabal sandbox init; \
		cabal sandbox add-source ../react-haskell; \
	fi
