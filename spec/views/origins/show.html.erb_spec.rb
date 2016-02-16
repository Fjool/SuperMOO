require 'rails_helper'

RSpec.describe "origins/show", type: :view do
  before(:each) do
    @origin = assign(:origin, Origin.create!(
      :location_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
