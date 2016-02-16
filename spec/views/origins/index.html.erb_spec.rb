require 'rails_helper'

RSpec.describe "origins/index", type: :view do
  before(:each) do
    assign(:origins, [
      Origin.create!(
        :location_id => 1
      ),
      Origin.create!(
        :location_id => 1
      )
    ])
  end

  it "renders a list of origins" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
