require 'rack/rewrite'

use Rack::Rewrite do
  r301 %r{.*}, 'http://saglac.io$&'
end

run lambda { |env| [200, {'Content-Type'=>'text/plain'}, StringIO.new("Nothing Here!\n")] }