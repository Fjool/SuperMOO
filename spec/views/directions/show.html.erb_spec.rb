require 'rails_helper'

RSpec.describe "directions/show", type: :view do
  before(:each) do
    @direction = assign(:direction, Direction.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
