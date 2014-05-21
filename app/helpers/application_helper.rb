module ApplicationHelper
  # returns the full title or a specific one
  def full_title(page_title)
    base_title= 'GG-MRP'
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
