require 'rails_helper'

RSpec.describe "directions/index", type: :view do
  before(:each) do
    assign(:directions, [
      Direction.create!(
        :description => "Description"
      ),
      Direction.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of directions" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
