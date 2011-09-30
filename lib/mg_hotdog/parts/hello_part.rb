class HelloPart
  def process(message, room)
    if match?(message)
      puts message.body
      room.speak("MG Hotdog says hello #{message.user.name}") 
    end
  end

  def match?(message)
    ! message.body.match(pattern).nil?
  end

  def pattern
    Regexp.new(/Hello mg_hotdog.*/)
  end

end
