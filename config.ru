require 'rack/rewrite'

use Rack::Rewrite do
  rewrite '/favicon.ico', '/images/favicon.ico'
  rewrite '/', '/index.html'
end
run Rack::File.new('site/public')