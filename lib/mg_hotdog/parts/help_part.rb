class HelpPart
  def process(message, robot)
    robot.speak("I AM THE MAGNESIUM HOTDOG")
    robot.speak(robot.parts.collect { | part| part.join }.join("\n"))
  end
end
