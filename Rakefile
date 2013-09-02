desc "Removes generated public folder"
task :clean do
  `rm -rf public`
end

desc "Generates static web site"
task "setup" do
  sh "rake clean"
  sh "cp -R source/imageflow public"
  sh "middleman build"
end
