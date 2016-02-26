require 'rails_helper'

RSpec.describe World do

  describe "World processing" do

    before(:each) do
      @world = World.new
    end

    it "indicates when it has finished processing" do
      game = instance_spy("GameController")
      @world.notify_when_done(game)
      @world.tick
      expect(game).to have_received(:done)
    end

    it "adds an actor when requested" do
      @actor = instance_spy("Actor")
      @world.add_actor(@actor)
      expect(@world.actors.length).to eq(1)
    end

    it "removes an actor when requested" do
      @actor1 = instance_spy("Actor")
      @actor2 = instance_spy("Actor")
      
      @world.add_actor(@actor1)
      @world.add_actor(@actor2)
      
      @world.remove_actor(@actor1)
      expect(@world.actors).to eq([@actor2])
    end
      
    it "responds to tick commands and forwards them to actors" do
      @actor = instance_spy("Actor")
      @world.add_actor(@actor)
      @world.tick
      expect(@actor).to have_received(:time_passes)
    end

  end

  describe "player handling" do

    before(:each) do
      @world = World.new
      @player = instance_spy("Player")

      # inject a mocked player
      @world.add_actor(@player)
    end

    it "accepts a new player" do
      expect(@player).to have_received(:welcome)
    end

    it "accepts multiple players" do
      @player2 = instance_spy("Player2")
      @world.add_actor(@player2)
      @world.tick
      expect(@player ).to have_received(:time_passes)
      expect(@player2).to have_received(:time_passes)
    end

  end

end
