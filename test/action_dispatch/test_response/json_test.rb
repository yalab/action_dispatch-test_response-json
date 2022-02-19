require "test_helper"

class ActionDispatch::TestResponse::JsonTest < Minitest::Test
  def setup
    @response = ActionDispatch::Response.create
  end

  def test_that_it_has_a_version_number
    refute_nil ::ActionDispatch::TestResponse::Json::VERSION
  end

  def test_it_does_something_useful_object
    @response.body = {users: [{name: 'yalab', age: 36}]}.to_json
    assert_equal 'yalab', @response.json['users'][0]['name']
    assert_equal 'yalab', @response.json[:users][0][:name]
  end

  def test_it_does_something_useful_array
    @response.body = [{name: 'yalab', age: 36}].to_json
    assert_equal 'yalab', @response.json[0]['name']
    assert_equal 'yalab', @response.json[0][:name]
  end

  def test_it_can_also_handle_nokogiri
    @response.body = '<html><head></head><body><h1>Minaswan</h1><p>Hello</p></body></html>'
    assert_equal 'Minaswan', @response.html.xpath('//h1').text
  end
end
