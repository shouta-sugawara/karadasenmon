class Admin::BaseController < ApplicationController
  layout 'admin'
  protect_from_forgery with: :exception
end
