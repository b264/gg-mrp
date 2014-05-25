class ErrorsController < ApplicationController
  def invalid_route
    flash.keep
    redirect_to builds_path(), :method => :get
  end
end
