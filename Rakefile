require 'nanoc3/tasks'

task :clean do
  `rm -rf site/public/*` 
end

task :compile do
  `mkdir -p site/public/javascripts`
  `mkdir -p site/public/images/slideshow`
  `mkdir -p site/public/css`

  `cp static/javascripts/* site/public/javascripts`
  `cp -R static/imageflow/imageflow.js site/public/javascripts`
  `cp -R static/imageflow/imageflow.css site/public/css`
  `cp -R static/images/* site/public/images`
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
