require 'rails_helper'

RSpec.describe "produtos/index", :type => :view do
  before(:each) do
    assign(:produtos, [
      Produto.create!(
        :nome => "Nome",
        :descricao => "Descricao",
        :empresa => nil
      ),
      Produto.create!(
        :nome => "Nome",
        :descricao => "Descricao",
        :empresa => nil
      )
    ])
  end

  it "renders a list of produtos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
