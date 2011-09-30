module MgHotdog
  # This is a base class for all "parts" 
  # parts are the things that actually do shit after we get a message
  # To create a new part simply implement the same interface as this
  # class and then add yourself to the brain
  class Part
    def process(message, room = nil)
      #Do Something
    end

    def match?(message)
      puts message.body.inspect
      return false unless message.body
      ! message.body.match(pattern).nil?
    end

    def pattern
      #The regex that you want to match against to run your rule
    end
  end
end

