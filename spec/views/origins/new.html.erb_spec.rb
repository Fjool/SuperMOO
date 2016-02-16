require 'rails_helper'

RSpec.describe "origins/new", type: :view do
  before(:each) do
    assign(:origin, Origin.new(
      :location_id => 1
    ))
  end

  it "renders new origin form" do
    render

    assert_select "form[action=?][method=?]", origins_path, "post" do

      assert_select "input#origin_location_id[name=?]", "origin[location_id]"
    end
  end
end
