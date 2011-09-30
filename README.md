# MG HOTDOG
He's smart, sexy, and always available

## Getting Him Running
2) run bin/mg_hotdog  
3) Talk to him  

## Adding "Parts"

Adding a part is as simple as creating a class in lib/mg_hotdog/parts that implements the Part
interface. To Create a Part that says hello when asked you would define
a class as follows:

```ruby

  class HelloPart
    def process(message, room)
      if match?(message)
        puts message.body
        room.speak("MG Hotdog says hello #{message.user.name}") 
      end
    end

    def match?(message)
      ! message.body.match(pattern).nil?
    end

    def pattern
      Regexp.new(/Hello mg_hotdog.*/)
    end
  end

```

You can then add the part to the robot by editing bin/mg_hotdog

```ruby

robot.add_part(HelloPart.new)

```
And that is all it takes. 

##Notes
* I removed Redis because I desided to use the composition pattern
  instead

* It's a multi purpose hotdog... you can eat it, you can burn it to make pretty colors, you can even make a VW Bug engine block out of it