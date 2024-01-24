require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get "/static_pages/home"
      expect(response).to have_http_status(:success)
    end

    it "has the correct title" do
      get "/static_pages/home"
      assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "GET /help" do
    it "returns http success" do
      get "/static_pages/help"
      expect(response).to have_http_status(:success)
    end

    it "has the correct title" do
      get "/static_pages/help"
      assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/static_pages/about"
      expect(response).to have_http_status(:success)
    end

    it "has the correct title" do
      get "/static_pages/about"
      assert_select "title", "About | Ruby on Rails Tutorial Sample App"
    end
  end
end
