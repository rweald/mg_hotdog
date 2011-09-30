class HelloPart
  def process(message, room)
    room.speak("Hello #{message.user.name}.") 
  end
end
