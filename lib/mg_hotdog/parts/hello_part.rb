class HelloPart
  def process(message, robot)
    robot.speak("Hello #{message.user.name}.") 
  end
end
