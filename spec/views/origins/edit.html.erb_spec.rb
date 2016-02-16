require 'rails_helper'

RSpec.describe "origins/edit", type: :view do
  before(:each) do
    @origin = assign(:origin, Origin.create!(
      :location_id => 1
    ))
  end

  it "renders the edit origin form" do
    render

    assert_select "form[action=?][method=?]", origin_path(@origin), "post" do

      assert_select "input#origin_location_id[name=?]", "origin[location_id]"
    end
  end
end
