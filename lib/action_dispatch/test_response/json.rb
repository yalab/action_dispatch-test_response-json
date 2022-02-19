require "action_dispatch/test_response/json/version"
require "nokogiri"

ActionDispatch::Response.module_eval do
  def json
    @json ||= JSON.parse(body, object_class: ActiveSupport::HashWithIndifferentAccess)
  end

  def html
    @html ||= Nokogiri::HTML(body)
  end
end
