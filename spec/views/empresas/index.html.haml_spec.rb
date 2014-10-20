require 'rails_helper'

RSpec.describe "empresas/index", :type => :view do
  before(:each) do
    assign(:empresas, [
      Empresa.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :cnpj => "Cnpj",
        :latitude => 1.5,
        :longitude => 1.5
      ),
      Empresa.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :cnpj => "Cnpj",
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of empresas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
