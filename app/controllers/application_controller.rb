class ApplicationController < ActionController::Base
  before_action :header
  def header
    @header = 1
  end
end
