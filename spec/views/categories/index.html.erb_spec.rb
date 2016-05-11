require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Category.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of categories" do
    render
    expect(response).to render_template(partial: '_category')
  end
end
