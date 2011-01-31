require 'nanoc3/tasks'

task :clean do
  `rm -rf site/public/*` 
end

task :compile do
  `mkdir site/public/javascripts`
  `cp static/javascripts/* site/public/javascripts`
  `nanoc3 compile`
end

task :view do
  `nanoc3 view`
end

task :watch do
  system "watchr site.watchr"
end

task :autocompile do
  `nanoc3 autocompile`
end
