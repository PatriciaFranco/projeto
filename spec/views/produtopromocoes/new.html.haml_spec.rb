require 'rails_helper'

RSpec.describe "produtopromocoes/new", :type => :view do
  before(:each) do
    assign(:produtopromocao, Produtopromocao.new(
      :valor => 1.5,
      :empresa => nil,
      :produto => nil
    ))
  end

  it "renders new produtopromocao form" do
    render

    assert_select "form[action=?][method=?]", produtopromocoes_path, "post" do

      assert_select "input#produtopromocao_valor[name=?]", "produtopromocao[valor]"

      assert_select "input#produtopromocao_empresa_id[name=?]", "produtopromocao[empresa_id]"

      assert_select "input#produtopromocao_produto_id[name=?]", "produtopromocao[produto_id]"
    end
  end
end
