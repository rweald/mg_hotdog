module MgHotdog
  # This is the interface that all parts must implement 
  # parts are the things that actually do shit after we get a message
  # To create a new part simply implement this interface and off you go
  # Checkout the README for more information on how to create a demo a
  # custom part
  class Part
    def initialize
      raise "Abstract Interace. Do not new up this class"
    end

    def process(message, room = nil)
      #Do Something
    end
  end
end

