require 'rails_helper'

RSpec.describe Actor do

  describe "interface" do

    before(:each) do
      @display = instance_spy("Display")
      @actor = Actor.new("Actor1", @display)
    end

    it "should output status message when asked" do
      @actor.status
      expect(@display).to have_received(:send_message).with("ok")
    end

  end

end
