ENV['RACK_ENV'] = 'test'

require_relative '../dummyapp'
require 'test/unit'
require 'rack/test'

class DummyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_returns_ok
    get '/'
    assert last_response.ok?
  end
end
