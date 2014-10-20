require 'rails_helper'

RSpec.describe "promocoes/show", :type => :view do
  before(:each) do
    @promocao = assign(:promocao, Promocao.create!(
      :abragencia => 1.5,
      :empresa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
