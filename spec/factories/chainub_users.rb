FactoryGirl.define do
  factory :chainub_user, :class => 'Chainub::User' do
    email { "hogehoge@gmail.com" }
    password "password"
    password_confirmation "password"
    #confirmed_at Date.today
  end
end
