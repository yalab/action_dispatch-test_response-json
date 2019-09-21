require "action_dispatch/test_response/json/version"

ActionDispatch::Response.module_eval do
  def json
    @json ||= JSON.parse(body).with_indifferent_access
  end
end
