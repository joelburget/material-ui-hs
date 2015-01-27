.PHONY: build npm

build: mui.css mui.js

npm:
	npm install

mui.css: npm mui.less
	lessc mui.less mui.css

mui.js: npm
	haste-commonjs -i Main.hs -o preprocessed.hs -j Mainstub.js
	hastec preprocessed.hs --with-js=Mainstub.js --with-js=hs-stubs.js --debug
	./node_modules/.bin/browserify preprocessed.js -o mui.js
	sed -i '' -e's/var window = {};//' mui.js
