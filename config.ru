# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'rack/protection'
use Rack::Protection, except: [:escaped_params, :json_csrf, :http_origin, :session_hijacking, :remote_token]

run Rails.application
