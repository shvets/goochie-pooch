require 'rack'
require 'rack/contrib'
require 'rack-rewrite'
require 'mime/types'


use Rack::TryStatic, 
    :root => "site/public",                              # static files root dir
    :urls => %w[/],                                 # match all requests 
    :try => ['.html', 'index.html', '/index.html']  # try these postfixes sequentially