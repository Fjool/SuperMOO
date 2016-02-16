require 'rails_helper'

RSpec.describe "destinations/edit", type: :view do
  before(:each) do
    @destination = assign(:destination, Destination.create!(
      :location_id => 1
    ))
  end

  it "renders the edit destination form" do
    render

    assert_select "form[action=?][method=?]", destination_path(@destination), "post" do

      assert_select "input#destination_location_id[name=?]", "destination[location_id]"
    end
  end
end
