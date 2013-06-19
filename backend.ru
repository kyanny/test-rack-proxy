require 'rack'
require 'securerandom'

run proc { |env|
  res = SecureRandom.base64
  [200, { 'Content-Type' => 'text/plain', 'Content-Length' => res.length.to_s }, [res]]
}
