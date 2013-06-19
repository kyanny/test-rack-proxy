require 'rack'
require './proxy'

use MyProxy

run proc { |env|
  [200, { 'Content-Type' => 'text/plain'}, ['ok']]
}
