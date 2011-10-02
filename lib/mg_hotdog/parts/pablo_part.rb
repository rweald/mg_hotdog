class PabloPart
  def process(message, robot)
    robot.speak('PABLO!!!!!') if message.user.name =~ /Paul Panarese/ && message.type =~ /EnterMessage/
  end
end
