class HelloPart
  def process(message, room)
    if match?(message)
      puts message.body
      room.speak("Hello #{message.user.name}") 
    end
  end

  def match?(message)
    ! message.body.match(pattern).nil?
  end

  def pattern
    Regexp.new(/[Hh]ello mg_hotdog.*/)
  end

end
