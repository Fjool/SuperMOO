require 'rails_helper'

RSpec.describe "destinations/new", type: :view do
  before(:each) do
    assign(:destination, Destination.new(
      :location_id => 1
    ))
  end

  it "renders new destination form" do
    render

    assert_select "form[action=?][method=?]", destinations_path, "post" do

      assert_select "input#destination_location_id[name=?]", "destination[location_id]"
    end
  end
end
