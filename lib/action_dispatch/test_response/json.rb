require "action_dispatch/test_response/json/version"

ActionDispatch::Response.module_eval do
  def json
    @json ||= JSON.parse(body, object_class: ActiveSupport::HashWithIndifferentAccess)
  end
end
