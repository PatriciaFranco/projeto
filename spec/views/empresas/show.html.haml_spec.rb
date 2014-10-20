require 'rails_helper'

RSpec.describe "empresas/show", :type => :view do
  before(:each) do
    @empresa = assign(:empresa, Empresa.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :cnpj => "Cnpj",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
