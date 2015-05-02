FactoryGirl.define do
  factory :chainub_channel, :class => 'Chainub::Channel' do
    secret_key "MyString"
name "MyString"
channel_type 1
domain "MyString"
  end

end
