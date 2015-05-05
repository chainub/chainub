module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:chainub_user]
      user = FactoryGirl.create(:chainub_user)
      #user = User.create({id: 1, email: "hogehoge", encrypted_password: "hogehoge", sign_in_count: 1, reset_password_token: "hogehoge"})
      #user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in user
    end
  end
end
