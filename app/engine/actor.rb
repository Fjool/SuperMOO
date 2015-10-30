class Actor

  def initialize(name, display)
    @name = name
    @display_controller = display
  end

  def time_passes

  end
  
  def status
    @display_controller.send_message("ok")
  end

  def welcome

  end

end
