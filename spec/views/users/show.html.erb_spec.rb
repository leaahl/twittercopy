require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      username: "asdfffasf",
      email: "asf@gmail.com",
      password: "xxxxxxxx",
      password_confirmation: "xxxxxxxx"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Email/)
  end
end
