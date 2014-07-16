=begin
class UsesController < ApplicationController
  # rails 4.x code
  #before_action :authenticate_user!, :except => [:index, :show]
  # rails 3.x code
  before_filter :authenticate_user!
  before_filter :lookup_build
  def lookup_build
    @build= Build.find_by_id(params[:build_id]) ||
      redirect_to builds_path,
        :flash => {:alert => 'build_id not found in URI parameters'}
    @part= Part.find_by_id(params[:part_id]) ||
      redirect_to parts_path,
        :flash => {:alert => 'part_id not found in URI parameters'}
  end
  # database CRUD actions below
  def create
    @use= Use.new
    fill_attribs_by_hash! @use, params[:use]
    action_notify @use.name, @use.validated_save
  end
  def show
    @use= Use.find_by_id(params[:id])
    #@parts= Part.all
  end
  def update
    @use= Use.find_by_id(params[:id])
    fill_attribs_by_hash! @use, params
    action_notify @use.name, @use.validated_save
  end
  def destroy
    @use= Build.find_by_id(params[:id])
    action_notify @use.name, @use.destroy
  end
  # CRUD accessories
  def new
    # no information to feed view
  end
  def edit
    @use= Use.find_by_id(params[:id])
  end 
  def index
    
    @sorted_by_user= false
    # send to view
    @uses= Use.all
  end
  # other routes
  def action_
    raise
  end
end
=end
