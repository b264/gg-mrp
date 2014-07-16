class Part < ActiveRecord::Base
  attr_accessible :name, :gg_id, :ext_id, :supplier, :lead_time, :description
  belongs_to :supplier
  belongs_to :build
  
  
  before_save '!(self.name.empty? or blacklisted_value? self.name)'
end
