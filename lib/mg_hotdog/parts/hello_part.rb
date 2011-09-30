module MgHotdog

  class HelloPart < Part
    def process(message, room)
      if match?(message, pattern)
        puts message.body
        room.speak("Hello #{message.user.name}") 
      end
    end

    def pattern
      Regexp.new(/[Hh]ello mg_hotdog.*/)
    end

  end
      
end
