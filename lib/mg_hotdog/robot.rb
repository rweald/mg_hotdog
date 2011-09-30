module MgHotdog
  class Robot

    attr_accessor :parts

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
  end

end
