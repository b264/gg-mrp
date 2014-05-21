class BuildsController < ApplicationController
  # database CRUD actions below
  def create
    @build= Build.new
    fill_attribs_by_hash! @build, params[:movie]
    action_notify @build.name, @build.validated_save
  end
  def show
    @build= Build.find_by_id(params[:id])
  end
  def update
    @build= Build.find_by_id(params[:id])
    fill_attribs_by_hash! @build, params
    action_notify @build.name, @build.validated_save
  end
  def destroy
    @build= Build.find_by_id(params[:id])
    action_notify @build.name, @build.destroy
  end
  # CRUD accessories
  def new
    # no information to feed view
  end
  def edit
    @build= Build.find_by_id(params[:id])
  end 
  def index
    # send to view
    @builds= Build.all
  end
  # other routes
  def action_
    
  end
  # methods without URI routing assigned
  def action_notify(name, flag)
    flash.notice= name.to_s
    if flash.notice.length < 1
      flash.notice= 'Database entry'
    end
    action= caller[0][/`([^']*)'/, 1] #name of the method that called this one
    unless action.last(1)== 'e'
      action+= 'e' #append an e on the end of words not ending in e
    end
    if flag
      flash.notice+= ' has been ' + action.to_s + 'd.'
    else
      flash.notice+= ' was NOT ' + action.to_s + 'd!'
    end
    redirect_to builds_path(), :method => :get
  end
  
end
