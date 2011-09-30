require 'tinder'

module MgHotdog
  class Connection
    def self.open(room_id)
      campfire = Tinder::Campfire.new("iclab", :token => ENV["CAMPFIRE_TOKEN"])
      campfire.rooms.first
    end
  end
end
