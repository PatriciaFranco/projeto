require 'rails_helper'

RSpec.describe "produtos/new", :type => :view do
  before(:each) do
    assign(:produto, Produto.new(
      :nome => "MyString",
      :descricao => "MyString",
      :empresa => nil
    ))
  end

  it "renders new produto form" do
    render

    assert_select "form[action=?][method=?]", produtos_path, "post" do

      assert_select "input#produto_nome[name=?]", "produto[nome]"

      assert_select "input#produto_descricao[name=?]", "produto[descricao]"

      assert_select "input#produto_empresa_id[name=?]", "produto[empresa_id]"
    end
  end
end
