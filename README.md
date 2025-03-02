# A SPA in Ruby!

This is an example repo of making a single page application in Ruby via WebAssembly.

<img width="980" alt="image" src="https://github.com/user-attachments/assets/b6ddc151-283c-42a8-bb47-e62fd85b9960" />

## Running it

Have a running Ruby and Node installation and then run:
```
bundle install
npm install
rake build
rake pack
bin/dev
```
`rake build` will likely take a while: it has to compile Ruby itself into WebAssembly.

## Code structure

`app` has the code for the SPA itself. `lib` contains all of the supporting code.

## Known limitations

* Safari doesn't seem to show Ruby errors.
* Some gems don't work (notably bigdecimal which ActiveSupport depends on).
* The WebAssembly binary is pretty large (40MB+)
