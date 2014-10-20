require 'rails_helper'

RSpec.describe "promocoes/new", :type => :view do
  before(:each) do
    assign(:promocao, Promocao.new(
      :abragencia => 1.5,
      :empresa => nil
    ))
  end

  it "renders new promocao form" do
    render

    assert_select "form[action=?][method=?]", promocoes_path, "post" do

      assert_select "input#promocao_abragencia[name=?]", "promocao[abragencia]"

      assert_select "input#promocao_empresa_id[name=?]", "promocao[empresa_id]"
    end
  end
end
