require 'uri'
require 'net/http'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
