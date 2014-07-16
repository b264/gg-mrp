class PartsController < ApplicationController
# rails 4.x code
  #before_action :authenticate_user!, :except => [:index, :show]
  # rails 3.x code
  before_filter :authenticate_user!
  # database CRUD actions below
  def create
    @part= Part.new
    fill_attribs_by_hash! @part, params[:part]
    action_notify @part.name, @part.validated_save
  end
  def show
    @part= Part.find_by_id(params[:id])
  end
  def update
    @part= Part.find_by_id(params[:id])
    fill_attribs_by_hash! @part, params
    action_notify @part.name, @part.validated_save
  end
  def destroy
    @part= Part.find_by_id(params[:id])
    action_notify @part.name, @part.destroy
  end
  # CRUD accessories
  def new
    # no information to feed view
  end
  def edit
    @part= Part.find_by_id(params[:id])
  end 
  def index
    @sorted_by_user= false
    # send to view
    @parts= Part.all
  end
  # other routes

end
