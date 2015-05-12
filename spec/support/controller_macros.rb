module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:chainub_user]
      user = FactoryGirl.create(:chainub_user)
      sign_in user
    end
  end
end
