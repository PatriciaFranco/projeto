require 'rails_helper'

RSpec.describe "promocoes/edit", :type => :view do
  before(:each) do
    @promocao = assign(:promocao, Promocao.create!(
      :abragencia => 1.5,
      :empresa => nil
    ))
  end

  it "renders the edit promocao form" do
    render

    assert_select "form[action=?][method=?]", promocao_path(@promocao), "post" do

      assert_select "input#promocao_abragencia[name=?]", "promocao[abragencia]"

      assert_select "input#promocao_empresa_id[name=?]", "promocao[empresa_id]"
    end
  end
end
