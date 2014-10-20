require 'rails_helper'

RSpec.describe "Produtos", :type => :request do
  describe "GET /produtos" do
    it "works! (now write some real specs)" do
      get produtos_path
      expect(response.status).to be(200)
    end
  end
end
