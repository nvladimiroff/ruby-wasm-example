task(:build) {
  puts "Building"
  `bundle exec rbwasm build --stdlib --ruby-version 3.4 -o ruby.wasm`
  raise 'Build failed'  unless $? == 0
  # If you have wasm-opt, you can uncomment this bit to optimize ruby.
  # `wasm-opt ruby.wasm -O3 -o ruby-fast.wasm`
  # raise 'wasm-opt failed'  unless $? == 0
  puts "Done"
}

task(:pack) {
  puts "Packing"
  `mkdir dist`
  `bundle exec rbwasm pack ruby-fast.wasm --dir ./lib::/lib --dir ./app::/app --dir ./config::/config -o dist/app.wasm`
  puts "Done"
}
