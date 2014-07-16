class Supplier < ActiveRecord::Base
  attr_accessible :name, :gg_id, :description, :phone, :email,
              :address0, :address1, :address2, :address3, :address4
  has_many :parts
  
  before_save '!(self.name.empty? or blacklisted_value? self.name)'
end
