module MgHotdog
  # This is a base class for all "parts" 
  # parts are the things that actually do shit after we get a message
  # To create a new part simply implement the same interface as this
  # class and then add yourself to the brain
  class Part
    def process(message, room = nil)
      room.speak("Hello World this is MG HOTDOG") 
    end
  end

end

