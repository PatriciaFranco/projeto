require 'rails_helper'

RSpec.describe "produtopromocoes/edit", :type => :view do
  before(:each) do
    @produtopromocao = assign(:produtopromocao, Produtopromocao.create!(
      :valor => 1.5,
      :empresa => nil,
      :produto => nil
    ))
  end

  it "renders the edit produtopromocao form" do
    render

    assert_select "form[action=?][method=?]", produtopromocao_path(@produtopromocao), "post" do

      assert_select "input#produtopromocao_valor[name=?]", "produtopromocao[valor]"

      assert_select "input#produtopromocao_empresa_id[name=?]", "produtopromocao[empresa_id]"

      assert_select "input#produtopromocao_produto_id[name=?]", "produtopromocao[produto_id]"
    end
  end
end
