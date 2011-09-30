module MgHotdog
  class Robot

    attr_accessor :parts
    attr_reader :room

    def initialize(room_number)
      @parts = []
      @room = Connection.open(room_number) 
    end

    def wake_up
      puts @parts.inspect
      @room.listen do |message|
        puts message
        @parts.each do |part|
          if message.body && message.body.match(part[0])
            EM.defer { part[1].process(message, self) }
          end
        end
      end
    end   

    def listen(pattern, responder)
      @parts << [pattern, responder]
    end

  end

end
