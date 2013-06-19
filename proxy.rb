require 'rack-proxy'

class MyProxy < Rack::Proxy
  def initialize(app)
    @app = app
  end

  def call(env)
    rewrite_response(perform_request(rewrite_env(env)))
  end

  def rewrite_env(env)
    env["HTTP_HOST"] = 'localhost:9393'
    env
  end

  def rewrite_response(triplet)
    status, headers, body = triplet
    triplet
  end
end
