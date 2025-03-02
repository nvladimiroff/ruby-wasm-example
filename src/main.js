import { DefaultRubyVM } from "@ruby/wasm-wasi/dist/browser"

const module = await WebAssembly.compileStreaming(await fetch("app.wasm"));
const { vm } = await DefaultRubyVM(module);

console.log("[VM] Loaded.")
vm.eval("require '/config/boot'; App.new.run")
