require 'rails_helper'

RSpec.describe "empresas/new", :type => :view do
  before(:each) do
    assign(:empresa, Empresa.new(
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :cnpj => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new empresa form" do
    render

    assert_select "form[action=?][method=?]", empresas_path, "post" do

      assert_select "input#empresa_nome[name=?]", "empresa[nome]"

      assert_select "input#empresa_endereco[name=?]", "empresa[endereco]"

      assert_select "input#empresa_telefone[name=?]", "empresa[telefone]"

      assert_select "input#empresa_cnpj[name=?]", "empresa[cnpj]"

      assert_select "input#empresa_latitude[name=?]", "empresa[latitude]"

      assert_select "input#empresa_longitude[name=?]", "empresa[longitude]"
    end
  end
end
