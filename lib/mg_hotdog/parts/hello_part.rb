module MgHotdog

  class HelloPart < Part
    def process(message, room)
      if match?(message)
        puts message.body
        room.speak("MG Hotdog says hello #{message.user.name}") 
      end
    end

    def pattern
      Regexp.new(/Hello mg_hotdog.*/)
    end

  end
      
end
