require 'rails_helper'

RSpec.describe "destinations/index", type: :view do
  before(:each) do
    assign(:destinations, [
      Destination.create!(
        :location_id => 1
      ),
      Destination.create!(
        :location_id => 1
      )
    ])
  end

  it "renders a list of destinations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
