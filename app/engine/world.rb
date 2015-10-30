class World

  @actors = []

  def add_actor(actor)
    @actors ||= []
    @actors << actor
    actor.welcome
  end

  def tick
    if @actors
      @actors.each do |actor|
        actor.time_passes
      end
    end

    @requester.done if @requester
  end

  def notify_when_done(requester)
    @requester = requester
  end

end
