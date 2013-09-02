#use Rack::Static,
#  :urls => ["/images", "/javascripts", "/stylesheets"],
#  :root => "public"
#
#run lambda { |env|
#  [
#    200,
#    {
#      'Content-Type'  => 'text/html',
#      'Cache-Control' => 'public, max-age=86400'
#    },
#    File.open('public/index.html', File::RDONLY)
#  ]
#}

require 'rack/rewrite'

use Rack::Rewrite do
  rewrite "/", "/index.html"
end

run Rack::File.new("public")