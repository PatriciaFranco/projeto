require 'rails_helper'

RSpec.describe "Produtopromocoes", :type => :request do
  describe "GET /produtopromocoes" do
    it "works! (now write some real specs)" do
      get produtopromocoes_path
      expect(response.status).to be(200)
    end
  end
end
