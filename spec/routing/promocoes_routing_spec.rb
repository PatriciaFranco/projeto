require "rails_helper"

RSpec.describe PromocoesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/promocoes").to route_to("promocoes#index")
    end

    it "routes to #new" do
      expect(:get => "/promocoes/new").to route_to("promocoes#new")
    end

    it "routes to #show" do
      expect(:get => "/promocoes/1").to route_to("promocoes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/promocoes/1/edit").to route_to("promocoes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/promocoes").to route_to("promocoes#create")
    end

    it "routes to #update" do
      expect(:put => "/promocoes/1").to route_to("promocoes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/promocoes/1").to route_to("promocoes#destroy", :id => "1")
    end

  end
end
