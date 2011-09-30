module MgHotdog
  class Robot

    def initialize
     @parts = []
     @room = Connection.open("440722") 
    end

    def wake_up
      @room.listen do |message|
        @parts.each do |part|
          EM.defer { part.process(message) }
        end
      end
    end   

    def add_part(part)
      @parts << part
    end
  end
end
