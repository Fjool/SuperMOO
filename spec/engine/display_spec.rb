require 'rails_helper'

RSpec.describe Display do

  describe "handling" do

    before(:each) do
      @display = Display.new
    end

    it "should output suitable JSON when asked" do
      @display.send_message("test");
      assert_equal "{text: 'test'}", @display.json
    end
  end

end
