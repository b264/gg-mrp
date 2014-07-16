module ApplicationHelper
  # instance methods
  def full_title(page_title)
    # returns the full title or a specific one
    base_title= 'GG-MRP'
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
  def blacklisted_value? (value)
    # these are reserved and will cause bugs if used
    ['sort_by', 'utf8', 'commit'].include? value
  end
end
class ActiveRecord::Base
  def to_param
    #override rails' default behaviour for prettier uris while still retaining the :id
    "#{self.id}-#{self.name.parameterize}"
  end
  def attrs
    #shortcut to default behaviour
    self.class.accessible_attributes
  end
  # class methods
  def self.attrs
    #shortcut to default behaviour
    self.accessible_attributes
  end
end
