require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #homepage" do
    it "returns http success" do
      get :homepage
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #faq" do
    it "returns http success" do
      get :faq
      expect(response).to have_http_status(:success)
    end
  end

end
