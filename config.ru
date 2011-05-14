require 'rack'

use Rack::Static, 
  :urls => ["/stylesheets", "/images"],
  :root => "site/public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html'
    },
    File.open('site/public/index.html', File::RDONLY)
  ]
}