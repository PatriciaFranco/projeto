require 'rails_helper'

RSpec.describe "produtopromocoes/show", :type => :view do
  before(:each) do
    @produtopromocao = assign(:produtopromocao, Produtopromocao.create!(
      :valor => 1.5,
      :empresa => nil,
      :produto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
