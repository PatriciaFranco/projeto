require 'rails_helper'

RSpec.describe "produtos/edit", :type => :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :nome => "MyString",
      :descricao => "MyString",
      :empresa => nil
    ))
  end

  it "renders the edit produto form" do
    render

    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do

      assert_select "input#produto_nome[name=?]", "produto[nome]"

      assert_select "input#produto_descricao[name=?]", "produto[descricao]"

      assert_select "input#produto_empresa_id[name=?]", "produto[empresa_id]"
    end
  end
end
