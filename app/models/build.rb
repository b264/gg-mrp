class Build < ActiveRecord::Base
  attr_accessible :name, :gg_id, :ext_id, :description
  
  # instance methods
  def validated_save
    if self.name.empty? or blacklisted_value? self.name
      # refuse to save
      return false
    else
      # save to db
      return self.save
    end
  end
  def blacklisted_value? (value)
    # these are reserved and will cause bugs if used
    if    value== 'sort_by'
    elsif value== 'utf8'
    elsif value== 'commit'
    else
      return false
    end
    return true
  end
end
