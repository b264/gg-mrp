FactoryGirl.define do
  factory :build do
    title 'A Fake Build' # default values
    description 'test case'
    #release_date { 10.years.ago }
  end
  # in your specs
  #it 'should include rating and year' do
    #movie= FactoryGirl.build(:movie, :title => 'Milk')
    # etc.
  #end
END
