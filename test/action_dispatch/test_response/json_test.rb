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
end
