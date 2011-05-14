use Rack::Static, :urls => ["/stylesheets", "/images"], :root => "site/public"

run lambda do |env| 
  [ 200, 
   { 'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400' }, 
   File.open('site/public/index.html', File::RDONLY)
  ]
end
