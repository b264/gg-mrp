Given /the following user exists/ do |credentials_table|
  credentials_table.hashes.each do |row|
    FactoryGirl.create :user do |user|
      row.each do |key, value|
        eval "user.#{key}= value"
      end
    end
  end
end
