require 'nanoc3/tasks'

task :clean do
  `rm -rf public/*`
end

task :compile do
  `nanoc3 compile`

  `mkdir -p public/css`

  `cp -R static/imageflow/imageflow.js public/javascripts`
  `cp -R static/imageflow/imageflow.css public/css`
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

task :recreate do
  puts exec(<<-SCRIPT
    heroku destroy goochie-pooch
    heroku create goochie-pooch
    heroku keys:add
    heroku addons:add custom_domains:basic

    heroku domains:add www.goochie-pooch.com
    heroku domains:add goochie-pooch.com
  SCRIPT
  )
end

task :migrate do
  #heroku create --stack bamboo-mri-1.9.2
  puts `heroku stack:migrate bamboo-mri-1.9.2`
end
