class Display

  def send_message(message)
    @message = message
  end

  def json
    return "{text: '#{@message}'}"
  end

end
