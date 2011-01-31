def compile
  `rake compile`
end

compile

view_thread = Thread.new do
`rake view`
end

watch( 'content/(.*)' ) do |m|
  p "Modified file: #{m[0]}"
  compile
end
watch( 'content/(.*)/(.*)' ) do |m|
  p "Modified file: #{m[0]}"
  compile
end

#watch( 'data/github_projects.txt' ) do |m|
#  `touch content/index.haml`
#  p "Modified file: #{m[0]}"
#  compile
#end
#
#watch( 'data/bookmarks.json' ) do |m|
#  `touch content/bookmarks.haml`
#  p "Modified file: #{m[0]}"
#  compile
#end


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