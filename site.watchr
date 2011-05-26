def compile
  puts `rake compile`
end

compile

view_thread = Thread.new do
`rake view`
end

watch( 'content/(.*)' ) do |m|
  puts "Modified content file: #{m[0]}"
  compile
end

watch( 'content/assets/coffee/(.*)' ) do |m|
  puts "Modified coffeescript file: #{m[0]}"
  compile
end

watch( 'content/assets/javascript/(.*)' ) do |m|
  puts "Modified javascript file: #{m[0]}"
  compile
end

watch( 'content/assets/style/(.*)' ) do |m|
  puts "Modified asset file: #{m[0]}"
  compile
end

watch( '/content/layouts/(.*)' ) do |m|
  puts "Modified layout: #{m[0]}"
  compile
end

watch( 'content/layouts/common/(.*)' ) do |m|
  puts "Modified common file: #{m[0]}"
  compile
end

# --------------------------------------------------
# Signal Handling
# --------------------------------------------------

Signal.trap('QUIT') do # Ctrl-\
  abort("\n")
  view_thread.kill
end

Signal.trap('INT' ) do # Ctrl-C
  abort("\n")
  view_thread.kill
end