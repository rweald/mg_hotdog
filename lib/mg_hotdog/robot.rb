module MgHotdog
  class Robot

    def initialize(room_number)
      @parts = []
      @room = Connection.open(room_number) 
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
