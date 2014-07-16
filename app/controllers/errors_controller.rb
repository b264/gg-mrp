class ErrorsController < ApplicationController
  def invalid_route
    # user followed an invalid or outdated URI
    message= 'Sent to Home Page instead of invalid URI: '
    message+= request.original_url
    flash.keep
    if flash[:notice].empty?
      flash[:notice]= message
    elsif flash[:warning].empty?
      flash[:warning]= message
    else
      flash[:notice]+= "\n"+ message
    end
    redirect_to builds_path(), :method => :get
  end
end
