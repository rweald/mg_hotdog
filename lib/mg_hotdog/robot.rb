module MgHotdog
  class Robot

    def initialize
      @parts = []
      @room = Connection.open("440722") 
    end

    def wake_up
      puts @parts.inspect
      @room.listen do |message|
        @parts.each do |part|
          part.process(message, @room)
        end
      end
    end   

    def add_part(part)
      @parts << part
    end

  end
end
