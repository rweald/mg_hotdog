class HelloPart
  def process(message, robot)
    robot.say("Hello #{message.user.name}.") 
  end
end
