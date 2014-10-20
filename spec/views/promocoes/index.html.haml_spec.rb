require 'rails_helper'

RSpec.describe "promocoes/index", :type => :view do
  before(:each) do
    assign(:promocoes, [
      Promocao.create!(
        :abragencia => 1.5,
        :empresa => nil
      ),
      Promocao.create!(
        :abragencia => 1.5,
        :empresa => nil
      )
    ])
  end

  it "renders a list of promocoes" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
