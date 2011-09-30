class HelloPart
  def process(message, robot)
    robot.room.speak("Hello #{message.user.name}.") 
  end
end
