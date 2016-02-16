require 'rails_helper'

RSpec.describe "directions/edit", type: :view do
  before(:each) do
    @direction = assign(:direction, Direction.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit direction form" do
    render

    assert_select "form[action=?][method=?]", direction_path(@direction), "post" do

      assert_select "input#direction_description[name=?]", "direction[description]"
    end
  end
end
