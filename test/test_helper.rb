$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "rack"
require "active_support/all"
require "action_dispatch/http/response"
require "action_dispatch/test_response/json"

require "minitest/pride"
require "minitest/autorun"
