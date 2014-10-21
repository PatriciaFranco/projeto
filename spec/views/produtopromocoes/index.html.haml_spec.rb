require 'rails_helper'

RSpec.describe "produtopromocoes/index", :type => :view do
  before(:each) do
    assign(:produtopromocoes, [
      Produtopromocao.create!(
        :valor => 1.5,
        :empresa => nil,
        :produto => nil
      ),
      Produtopromocao.create!(
        :valor => 1.5,
        :empresa => nil,
        :produto => nil
      )
    ])
  end

  it "renders a list of produtopromocoes" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
