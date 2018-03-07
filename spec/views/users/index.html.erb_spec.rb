require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        username: "asdasdf",
        email: "Email@afa.com",
        password: "xxxxxxxx",
        password_confirmation: "xxxxxxxx"
      ),
      User.create!(
        username: "adadas",
        email: "Email@gasf.com",
        password: "xxxxxxxx",
        password_confirmation: "xxxxxxxx"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "asdasdf".to_s, :count => 1
    assert_select "tr>td", :text => "email@afa.com".to_s, :count => 1
  end
end
