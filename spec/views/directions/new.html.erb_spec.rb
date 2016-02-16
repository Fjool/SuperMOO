require 'rails_helper'

RSpec.describe "directions/new", type: :view do
  before(:each) do
    assign(:direction, Direction.new(
      :description => "MyString"
    ))
  end

  it "renders new direction form" do
    render

    assert_select "form[action=?][method=?]", directions_path, "post" do

      assert_select "input#direction_description[name=?]", "direction[description]"
    end
  end
end
