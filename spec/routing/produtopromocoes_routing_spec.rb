require "rails_helper"

RSpec.describe ProdutopromocoesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/produtopromocoes").to route_to("produtopromocoes#index")
    end

    it "routes to #new" do
      expect(:get => "/produtopromocoes/new").to route_to("produtopromocoes#new")
    end

    it "routes to #show" do
      expect(:get => "/produtopromocoes/1").to route_to("produtopromocoes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/produtopromocoes/1/edit").to route_to("produtopromocoes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/produtopromocoes").to route_to("produtopromocoes#create")
    end

    it "routes to #update" do
      expect(:put => "/produtopromocoes/1").to route_to("produtopromocoes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/produtopromocoes/1").to route_to("produtopromocoes#destroy", :id => "1")
    end

  end
end
