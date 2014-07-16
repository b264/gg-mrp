=begin
class Use < ActiveRecord::Base
  attr_accessible :name, :gg_id, :ext_id, :supplier, :lead_time, :description
  belongs_to :part
  #belongs_to :part
  belongs_to :build, polymorphic: true
  belongs_to :supplier
  
  before_save '!(self.name.empty? or blacklisted_value? self.name)'
  

end
=end
