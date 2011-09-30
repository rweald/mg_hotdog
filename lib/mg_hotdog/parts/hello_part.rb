class HelloPart
  def process(message, room)
    if match?(message)
      room.speak("MG Hotdog says hello #{message.user.name}") 
    end
  end

  def match?(message)
    ! message.body.match(pattern).nil?
  end

  def pattern
    Regexp.new(/Hello mg_hotdog.*/i)
  end

end
