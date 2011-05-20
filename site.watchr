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

watch( 'content/assets/style/(.*)' ) do |m|
  puts "Modified asset file: #{m[0]}"
  compile
end

watch( 'layouts/(.*)' ) do |m|
  puts "Modified layout: #{m[0]}"
  compile
end

watch( 'layouts/common/(.*)' ) do |m|
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