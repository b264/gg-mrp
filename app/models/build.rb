class Build < ActiveRecord::Base
  attr_accessible :name, :gg_id, :ext_id, :due_by, :description
  has_many :parts, :dependent => :destroy
  
  
  before_save '!(self.name.empty? or blacklisted_value? self.name)'
end
