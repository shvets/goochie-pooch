require 'nanoc3/tasks'

task :clean do
  `rm -rf public/*`
end

task :compile do
  `mkdir -p public/css`

  `cp -R static/imageflow/imageflow.js public/javascripts`
  `cp -R static/imageflow/imageflow.css public/css`
  `nanoc3 compile`
end

task :view do
  `nanoc3 view --port 3001`
end

task :watch do
  system "watchr site.watchr"
end

task :autocompile do
  `nanoc3 autocompile`
end
